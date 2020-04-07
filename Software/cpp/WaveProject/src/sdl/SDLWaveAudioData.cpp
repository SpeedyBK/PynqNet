//
// Created by benjamin on 06.04.20.
//

#include <iostream>
#include "SDLWaveAudioData.h"

SDLWaveAudioData::SDLWaveAudioData(const std::string &filename, bool streamFromFile) {

    SDL_AudioSpec wavSpec;
    Uint8* wavStart;
    Uint32 wavLength;

    if (SDL_LoadWAV(filename.c_str(), &wavSpec, &wavStart, &wavLength) == nullptr){
        throw filename;
    }

    m_pos    = wavStart;
    m_start  = wavStart;
    m_end    = m_start + wavLength;
    m_length = wavLength;
}


SDLWaveAudioData::~SDLWaveAudioData() {
    SDL_FreeWAV(m_start);
}

size_t SDLWaveAudioData::getAudioLength() {
    return (size_t)(m_end - m_start);
}

size_t SDLWaveAudioData::generateSamples(float *stream, size_t streamLength, size_t pos, const SampleInfo &info) {

    float pitch = (float)info.pitch;
    m_pos = m_start + pos;

    if (m_pos > m_end || m_pos < m_start){
        return (size_t) -1;
    }

    auto length = (Uint32)streamLength;
    auto lengthLeft = (Uint32)((m_end - m_pos)/pitch);
    if (length > lengthLeft){ length = lengthLeft; }

    auto samples = (Sint16*)m_pos;
    float sampleIndex = 0;

    auto factor = (float)(info.volume/32768.0f);
    for(Uint32 i = 0; i < length; i++){
        stream[i] = (samples[(size_t)sampleIndex])*factor;
        sampleIndex+= pitch;
    }

    m_pos = (Uint8*)(samples + (size_t)sampleIndex);

    return (size_t)(m_pos - m_start);

}
