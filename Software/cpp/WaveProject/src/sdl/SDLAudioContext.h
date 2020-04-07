//
// Created by benjamin on 05.04.20.
//

#ifndef WAVEPROJECT_SDLAUDIOCONTEXT_H
#define WAVEPROJECT_SDLAUDIOCONTEXT_H

#include "../IAudioContext.h"
#include <SDL2/SDL.h>
#include <vector>

class SDLAudioContext : public IAudioContext{

public:

    SDLAudioContext();

    virtual ~SDLAudioContext();

    virtual void playAudio (AudioObject& ao);
    virtual void stopAudio (AudioObject& ao);
    virtual void pauseAudio(AudioObject& ao);

    void generateSamples(Uint8* stream, int streamLength);

private:

    SDL_AudioDeviceID         m_device;
    std::vector<float>        m_stream;
    std::vector<AudioObject*> m_playingAudio;

    bool removeAudio(AudioObject& ao);

    SDLAudioContext(SDLAudioContext& other){(void) other;}
    void operator=(const SDLAudioContext& other){(void) other;}

};


#endif //WAVEPROJECT_SDLAUDIOCONTEXT_H
