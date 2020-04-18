cmake_minimum_required(VERSION 3.14)
project(WaveProject)

find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})

set(CMAKE_CXX_STANDARD 14)

add_executable(WaveProject
               src/main.cpp
               src/AudioObject.h
               src/AudioObject.cpp
               src/IAudioContext.h
               src/sdl/SDLAudioContext.h
               src/sdl/SDLAudioContext.cpp
               src/sdl/SDLWaveAudioData.h
               src/sdl/SDLWaveAudioData.cpp
               src/sdl/SDLAudioDevice.h
               src/sdl/SDLAudioDevice.cpp
               src/IAudioData.h
               src/IAudioDevice.h
               src/SampleInfo.h
               src/Network/TCPClient.h
               src/Network/TCPClient.cpp
               src/Exception.cpp
               src/Exception.h
        )
target_link_libraries(WaveProject ${SDL2_LIBRARIES})