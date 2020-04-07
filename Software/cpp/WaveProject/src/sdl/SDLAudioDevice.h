//
// Created by benjamin on 06.04.20.
//

#ifndef WAVEPROJECT_SDLAUDIODEVICE_H
#define WAVEPROJECT_SDLAUDIODEVICE_H


#include <string>
#include "../IAudioDevice.h"

class SDLAudioDevice : public IAudioDevice {

public:
    virtual IAudioData* createAudioFromFile(const std::string& filePath);
    virtual void releaseAudio(IAudioData* audioData);


private:

};


#endif //WAVEPROJECT_SDLAUDIODEVICE_H
