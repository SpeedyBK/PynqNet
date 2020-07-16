#include <iostream>
#include <SDL2/SDL.h>
#include <list>

#include "MainFunctions.h"
#include "IAudioDevice.h"
#include "IAudioContext.h"
#include "AudioObject.h"

#include "sdl/SDLAudioDevice.h"
#include "sdl/SDLAudioContext.h"

#include "Network/TCPClient.h"

#define FILE_PATH "../Audio/Thriller.wav"
#define COEFF_PATH "../Audio/TelefonFIR.fcf"

#define HOST_IP "192.168.1.10"
#define PORT 8000

    void testfilter (std::list<float> &coeffs);

    int main(int argc, char **argv) {

        SDL_Init(SDL_INIT_AUDIO);

        IAudioDevice *device = new SDLAudioDevice();

        IAudioContext *context = new SDLAudioContext();
        std::list<float> coeffs = parsefcf(COEFF_PATH);
        context->setupFilter(coeffs);

        testfilter(coeffs);

        IAudioData *data = device->createAudioFromFile(FILE_PATH);

        SampleInfo info;
        info.volume = 1.0f;
        info.pitch = 1.0f;

        AudioObject sound(info, data);

        std::cout << std::endl << "Creating Socket!" << std::endl;
        TCPClient *tcp = new TCPClient(HOST_IP, PORT);
        char in = 0;
        std::cin >> in;
        if (in == 'e') {
            std::cout << "Connecting to Host!"<< std::endl;
            tcp->connectToHost();
            std::cout << "Connection: Success!"<< std::endl;
        }

        while (in != 'q') {
            std::cin >> in;
            switch (in) {
                case 'a': context->playAudio(sound); break;
                case 'p': context->pauseAudio(sound); break;
                case 's': context->stopAudio(sound); break;
                case '+': context->increasePitch(sound); break;
                case '-': context->decreasePitch(sound); break;
                case 'k': context->increaseVolume(sound); break;
                case 'm': context->decreaseVolume(sound); break;
                case 'n': context->selEffects('n', nullptr); break;
                case 'f': context->selEffects('f', nullptr); break;
                case 'g': context->selEffects('g', nullptr); break;
                case 't': context->selEffects('t', tcp); break;
                default : break;
            }
        }

        device->releaseAudio(data);
        delete context;
        delete device;

        SDL_Quit();

        return 0;
    }

    void testfilter (std::list<float> &coeffs){

        std::cout << std::endl;

        std::vector<float> m_coeffs;
        std::vector<Sint16> m_filterArray = {0};
        for (auto &it : coeffs){
            m_coeffs.push_back(it);
        }
        m_filterArray.reserve(m_coeffs.size());

        Sint16 dirac[390];
        for (int i = 0; i < sizeof(dirac)/ sizeof(Sint16); i++){
            if (i == 240){
                dirac[i] = 10000;
            }else {
                dirac[i] = 0;
            }
            std::cout << i << ": " << dirac[i] << std::endl;
        }

        for (auto &it : dirac) {

            for (int i = m_coeffs.size() - 1; i > 0; i--) {
                m_filterArray[i] = m_filterArray[i - 1];
            }

            m_filterArray[0] = it;

            float out = 0;

            for (int i = 0; i < m_coeffs.size(); i++) {
                out += ((float) m_filterArray[i] * m_coeffs[i]);
            }

            std::cout << (Sint16) out << std::endl;
        }
    }