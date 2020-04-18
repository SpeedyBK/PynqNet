//
// Created by benjamin on 05.04.20.
//

#ifndef WAVEPROJECT_IAUDIOCONTEXT_H
#define WAVEPROJECT_IAUDIOCONTEXT_H

#include <list>

#include "AudioObject.h"
#include "Network/TCPClient.h"

class IAudioContext {

public:

    virtual ~IAudioContext() = default;

    virtual void playAudio (AudioObject& ao) = 0;
    virtual void stopAudio (AudioObject& ao) = 0;
    virtual void pauseAudio(AudioObject& ao) = 0;
    virtual void increasePitch(AudioObject &ao) = 0;
    virtual void decreasePitch(AudioObject &ao) = 0;
    virtual void increaseVolume(AudioObject &ao) = 0;
    virtual void decreaseVolume(AudioObject &ao) = 0;
    virtual void setupFilter(std::list<float> coeffs) = 0;
    virtual void selEffects(char sel, TCPClient* tcp) = 0;

private:

};


#endif //WAVEPROJECT_IAUDIOCONTEXT_H
