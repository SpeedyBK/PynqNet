#include <iostream>
#include <SDL2/SDL.h>

#include "IAudioDevice.h"
#include "IAudioContext.h"
#include "AudioObject.h"

#include "sdl/SDLAudioDevice.h"
#include "sdl/SDLAudioContext.h"

#define FILE_PATH "../Audio/Careless.wav"

int main(int argc, char** argv) {

    SDL_Init(SDL_INIT_AUDIO);

    IAudioDevice* device = new SDLAudioDevice();
    IAudioContext* context = new SDLAudioContext();

    IAudioData* data = device->createAudioFromFile(FILE_PATH);

    SampleInfo info;
    info.volume = 1.0f;
    info.pitch  = 1.0f;

    AudioObject sound(info, data);

    char in = 0;
    while (in != 'q'){
        std::cin >> in;
        switch (in) {
            case 'a': context->playAudio(sound);  break;
            case 'p': context->pauseAudio(sound); break;
            case 's': context->stopAudio(sound);  break;
            case '+': sound.increasePitch();      break;
            case '-': sound.decreasePitch();      break;
            case 'k': sound.increaseVolume();     break;
            case 'm': sound.decreaseVolume();     break;
            default : break;
        }
    }

    device->releaseAudio(data);
    delete context;
    delete device;

    SDL_Quit();

    return 0;
}