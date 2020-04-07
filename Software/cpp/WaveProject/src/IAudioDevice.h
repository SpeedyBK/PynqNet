//
// Created by benjamin on 05.04.20.
//

#ifndef WAVEPROJECT_IAUDIODEVICE_H
#define WAVEPROJECT_IAUDIODEVICE_H

#include <string>
#include "IAudioData.h"

class IAudioDevice {

public:
    virtual ~IAudioDevice() = default;

    virtual IAudioData* createAudioFromFile(const std::string& filePath) = 0;
    virtual void releaseAudio(IAudioData* audioData) = 0;

private:

};


#endif //WAVEPROJECT_IAUDIODEVICE_H
