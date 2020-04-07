//
// Created by benjamin on 06.04.20.
//

#include "SDLAudioDevice.h"
#include "SDLWaveAudioData.h"

IAudioData *SDLAudioDevice::createAudioFromFile(const std::string &filePath) {
    return new SDLWaveAudioData(filePath, false);
}

void SDLAudioDevice::releaseAudio(IAudioData *audioData) {
    if (audioData){
        delete audioData;
    }
}
