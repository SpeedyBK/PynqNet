cmake_minimum_required(VERSION 3.14)
project(ZyNet)

set(CMAKE_CXX_STANDARD 17)

add_executable(ZyNet
        src/ZyNet.cpp
        src/ZyNet/Exception.h
        src/ZyNet/Exception.cpp
        src/ZyNet/Base.h
        src/ZyNet/Base.cpp
        )