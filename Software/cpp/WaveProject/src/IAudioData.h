//
// Created by benjamin on 05.04.20.
//

#ifndef WAVEPROJECT_IAUDIODATA_H
#define WAVEPROJECT_IAUDIODATA_H

#include "SampleInfo.h"
#include <cstddef>

class IAudioData {

public:
    virtual ~IAudioData() = default;

    virtual size_t generateSamples(float* stream, size_t streamLength, size_t pos, const SampleInfo& info) = 0;
    virtual size_t getAudioLength() = 0;

private:

};


#endif //WAVEPROJECT_IAUDIODATA_H
