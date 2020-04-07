//
// Created by benjamin on 05.04.20.
//

#ifndef WAVEPROJECT_IAUDIOCONTEXT_H
#define WAVEPROJECT_IAUDIOCONTEXT_H

#include "AudioObject.h"

class IAudioContext {

public:

    virtual ~IAudioContext() = default;

    virtual void playAudio (AudioObject& ao) = 0;
    virtual void stopAudio (AudioObject& ao) = 0;
    virtual void pauseAudio(AudioObject& ao) = 0;

private:

};


#endif //WAVEPROJECT_IAUDIOCONTEXT_H
