//
// Created by benjamin on 05.04.20.
//

#ifndef WAVEPROJECT_AUDIOOBJECT_H
#define WAVEPROJECT_AUDIOOBJECT_H

#include "SampleInfo.h"
#include "IAudioData.h"

class AudioObject {

public:

    AudioObject(SampleInfo& info, IAudioData* data);

    bool generateSamples (float* stream, size_t streamLength);
    void increasePitch();
    void decreasePitch();
    void increaseVolume();
    void decreaseVolume();
    void setPos(double pos);

private:

    size_t      m_audioPos;
    size_t      m_audioLength;
    SampleInfo  m_sampleinfo;
    IAudioData* m_audiodata;

    size_t PosToAbsolutePos(double pos);

};


#endif //WAVEPROJECT_AUDIOOBJECT_H
