//
// Created by benjamin on 05.04.20.
//

#include <iostream>
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

        if      (val >  1.0) { val =  1.0; }
        else if (val < -1.0) { val = -1.0; }

        stream[i] = (Sint16)(val*SDL_MAX_SINT16);
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
