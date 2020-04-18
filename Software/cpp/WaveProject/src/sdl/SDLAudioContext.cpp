//
// Created by benjamin on 05.04.20.
//

#include <iostream>
#include <time.h>
#include "SDLAudioContext.h"


static void SDLAudioContext_AudioCallback(void* userData, Uint8* streamIn, int streamlength){
    auto context = (SDLAudioContext*)userData;
    context->generateSamples(streamIn, streamlength);
}


SDLAudioContext::SDLAudioContext() {

    SDL_AudioSpec spec;

    SDL_zero(spec);
    spec.freq = 44100;
    spec.format = AUDIO_S16SYS;
    spec.channels = 2;
    spec.samples = 2048;
    spec.userdata = this;
    spec.callback = SDLAudioContext_AudioCallback;

    m_device = SDL_OpenAudioDevice(nullptr, 0, &spec, nullptr, SDL_AUDIO_ALLOW_ANY_CHANGE);
    if (m_device == 0){
        throw SDL_GetError();
    }

    SDL_PauseAudioDevice(m_device, 0);
}


SDLAudioContext::~SDLAudioContext() { SDL_CloseAudioDevice(m_device); }

void SDLAudioContext::generateSamples(Uint8 *streamIn, int streamInLength) {

    size_t streamLength = (size_t)(streamInLength/2);
    m_stream.reserve(streamLength);
    auto floatstream = *(float**)(&m_stream);

    for (size_t i = 0; i < streamLength; i++){
        floatstream[i] = 0.0f;
    }

    for (auto it = m_playingAudio.begin(); it != m_playingAudio.end(); ++it){
        if (!(*it)->generateSamples(floatstream, streamLength)){
            removeAudio(*(*it));
        }
    }

    auto stream = (Sint16*)streamIn;

    for (size_t i = 0; i < streamLength; i++){
        auto val = floatstream[i];

        if      (val >  1.0f) { val =  1.0f; }
        else if (val < -1.0f) { val = -1.0f; }
        stream[i] = dsp((Sint16)(val*SDL_MAX_SINT16));
    }

    if (m_effects == 't') {
        m_TCP->transfer(stream, sizeof(stream));
    }
}


bool SDLAudioContext::removeAudio(AudioObject &ao) {
    for (auto it = m_playingAudio.begin(); it != m_playingAudio.end(); ++it){
        if (*it == &ao){
            m_playingAudio.erase(it);
            return true;
        }
    }
    return false;
}

void SDLAudioContext::playAudio(AudioObject &ao) {

    SDL_LockAudioDevice(m_device);

    removeAudio(ao);
    m_playingAudio.push_back(&ao);

    SDL_UnlockAudioDevice(m_device);
}

void SDLAudioContext::stopAudio(AudioObject &ao) {

    SDL_LockAudioDevice(m_device);

    if(removeAudio(ao)){
        ao.setPos(0.0);
    }

    SDL_UnlockAudioDevice(m_device);
}

void SDLAudioContext::pauseAudio(AudioObject &ao) {

    SDL_LockAudioDevice(m_device);

    removeAudio(ao);

    SDL_UnlockAudioDevice(m_device);
}

void SDLAudioContext::increasePitch(AudioObject &ao) {
    ao.increasePitch();
}

void SDLAudioContext::decreasePitch(AudioObject &ao) {
    ao.decreasePitch();
}

void SDLAudioContext::increaseVolume(AudioObject &ao) {
    ao.increaseVolume();
}

void SDLAudioContext::decreaseVolume(AudioObject &ao) {
    ao.decreaseVolume();
}

void SDLAudioContext::selEffects(char sel, TCPClient* TCP) {
    m_effects = sel;
    m_TCP = TCP;
}

void SDLAudioContext::setupFilter(std::list<float> coeffs) {
    for (auto &it : coeffs){
        m_coeffs.push_back(it);
    }
    m_filterArray.reserve(m_coeffs.size());
    srand (time(NULL));
}

Sint16 SDLAudioContext::audioFilter(Sint16 sample) {

    for (int i = m_coeffs.size() - 1; i > 0; i--){
        m_filterArray[i] = m_filterArray[i-1];
    }

    m_filterArray[0] = sample;

    float out = 0;

    for (int i = 0; i < m_coeffs.size(); i++){
        out += ((float)m_filterArray[i] * m_coeffs[i]);
    }

    return (Sint16)out;
}

Sint16 SDLAudioContext::audioFilterNoisy(Sint16 sample) {
    for (int i = m_coeffs.size() - 1; i > 0; i--){
        m_filterArray[i] = m_filterArray[i-1];
    }

    m_filterArray[0] = sample;

    float out = 0;

    for (int i = 0; i < m_coeffs.size(); i++){
        out += ((float)m_filterArray[i] * m_coeffs[i] / m_coeffs.size());
    }

    return (Sint16)out * 128;
}

Sint16 SDLAudioContext::cracks(Sint16 Sample) {
    static int randn = 4000;
    static int i = 0;

    if (i == randn){
        i = 0;
        randn = rand() % (SDL_MAX_SINT16 * 3);
        return randn/6;
    }

    i++;
    return Sample;
}

Sint16 SDLAudioContext::dsp(Sint16 samples) {
    if (m_effects == 'n') {
        return samples;
    }
    else if (m_effects == 'f'){
        return audioFilter(samples);
    }
    else if (m_effects == 'g'){
        return cracks(audioFilterNoisy(samples));
    }
    else {
        return samples;
    }
}