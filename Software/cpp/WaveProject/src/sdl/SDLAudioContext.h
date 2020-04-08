//
// Created by benjamin on 05.04.20.
//

#ifndef WAVEPROJECT_SDLAUDIOCONTEXT_H
#define WAVEPROJECT_SDLAUDIOCONTEXT_H

#include "../IAudioContext.h"
#include <SDL2/SDL.h>
#include <vector>
#include <list>

class SDLAudioContext : public IAudioContext{

public:

    SDLAudioContext();

    virtual ~SDLAudioContext();

    virtual void playAudio (AudioObject& ao);
    virtual void stopAudio (AudioObject& ao);
    virtual void pauseAudio(AudioObject& ao);
    virtual void increasePitch(AudioObject &ao);
    virtual void decreasePitch(AudioObject &ao);
    virtual void increaseVolume(AudioObject &ao);
    virtual void decreaseVolume(AudioObject &ao);
    virtual void setupFilter(std::list<float> coeffs);
    virtual void selEffects(char sel);

    void generateSamples(Uint8* stream, int streamLength);
    Sint16 audioFilter(Sint16 sample);
    Sint16 audioFilterNoisy(Sint16 sample);
    Sint16 cracks (Sint16 Sample);
    Sint16 dsp (Sint16 samples);

private:

    SDL_AudioDeviceID         m_device;
    std::vector<float>        m_stream;
    std::vector<AudioObject*> m_playingAudio;
    std::vector<Sint16>       m_filterArray;
    std::vector<float>        m_coeffs;
    char                      m_effects;

    bool removeAudio(AudioObject& ao);

    SDLAudioContext(SDLAudioContext& other){(void) other;}
    void operator=(const SDLAudioContext& other){(void) other;}

};


#endif //WAVEPROJECT_SDLAUDIOCONTEXT_H
