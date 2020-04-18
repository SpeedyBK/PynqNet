//
// Created by benjamin on 05.04.20.
//

#include <iostream>
#include "AudioObject.h"

AudioObject::AudioObject(SampleInfo &info, IAudioData *data) : m_audioPos(0), m_audiodata(data),
                         m_audioLength(data->getAudioLength()), m_sampleinfo(info) {}

bool AudioObject::generateSamples(float *stream, size_t streamLength) {

    m_audioPos = m_audiodata->generateSamples(stream, streamLength, m_audioPos, m_sampleinfo);

    if (m_audioPos == (size_t) -1){
        m_audioPos = 0;
        return false;
    }

    return true;
}

void AudioObject::setPos(double pos) {

    if (pos < 0.0) {pos = 0.0;} else if (pos > 1.0) {pos = 1.0;}

    m_audioPos = PosToAbsolutePos(pos);
}

size_t AudioObject::PosToAbsolutePos(double pos) {
    return (size_t)(pos * m_audioLength);
}

void AudioObject::increasePitch() {
    m_sampleinfo.pitch += 0.1f;
    std::cout << m_sampleinfo.pitch << std::endl;
}

void AudioObject::decreasePitch() {
    m_sampleinfo.pitch -= 0.1f;
    std::cout << m_sampleinfo.pitch << std::endl;
}

void AudioObject::increaseVolume() {
    m_sampleinfo.volume += 0.1f;
    std::cout << m_sampleinfo.volume << std::endl;
}

void AudioObject::decreaseVolume() {
    m_sampleinfo.volume -= 0.1f;
    std::cout << m_sampleinfo.volume << std::endl;
}
