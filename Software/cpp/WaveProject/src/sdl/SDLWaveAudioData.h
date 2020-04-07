//
// Created by benjamin on 06.04.20.
//

#ifndef WAVEPROJECT_SDLWAVEAUDIODATA_H
#define WAVEPROJECT_SDLWAVEAUDIODATA_H

#include <SDL2/SDL.h>
#include <string>
#include "../IAudioData.h"

class SDLWaveAudioData : public IAudioData{

public:
    SDLWaveAudioData(const std::string& filename, bool streamFromFile);

    virtual ~SDLWaveAudioData();

    virtual size_t generateSamples (float* stream, size_t streamLength, size_t pos, const SampleInfo& info);

    virtual size_t getAudioLength();

private:

    Uint8* m_pos;
    Uint8* m_start;
    Uint8* m_end;
    Uint32 m_length;

    SDLWaveAudioData(SDLWaveAudioData& other) { (void)other; }
    void operator=(const SDLWaveAudioData& other) { (void)other; }

};


#endif //WAVEPROJECT_SDLWAVEAUDIODATA_H
