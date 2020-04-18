//
// Created by benjamin on 17.04.20.
//

#include <cstring>
#include "TCPClient.h"
#include "../Exception.h"

TCPClient::TCPClient(std::string IPAddress, int port) : m_IPAddress(IPAddress), m_port(port) {

    m_sock = socket(AF_INET, SOCK_STREAM, 0);
    if (m_sock == -1){
        throw WaveProject::Exception ("Can't create soket...");
    }

    m_hint.sin_family = AF_INET;
    m_hint.sin_port = htons(port);
    inet_pton(AF_INET, IPAddress.c_str(), &m_hint.sin_addr);

    std::cout << m_IPAddress << std::endl;
    std::cout << m_port << std::endl;

}

TCPClient::~TCPClient() {
    close(m_sock);
}

void TCPClient::connectToHost() {
    m_connectRes = connect(m_sock, (sockaddr*)&m_hint, sizeof(m_hint));
    if (m_connectRes == -1){
        throw WaveProject::Exception("Can't connect to host...");
    }
}

void TCPClient::transfer(Sint16 audioData[], int size) {

    Uint8 buffer[size*2];
    ShortIntToByteVector(audioData, buffer, sizeof(buffer));

    m_sendRes = send(m_sock, &buffer, sizeof(buffer), 0); //ToDo: Error Checking

    memset(&buffer, 0, sizeof(buffer));
    m_recRes = recv(m_sock, &buffer, sizeof(buffer), 0);

    byteVectorToInt(buffer, audioData, sizeof(buffer));
}

void TCPClient::ShortIntToByteVector(Sint16 intParam[], unsigned char buffer[], int size) {

    for (int i = 0; i < size; i++){
        if (i % 2 == 0){
            buffer[i] = intParam[(int)floor(i/2)] / 256;
        }
        else{
            buffer[i] = intParam[(int)floor(i/2)] % 256;
        }
    }
}

void TCPClient::byteVectorToInt(unsigned char buff[], Sint16 intArray[], int size) {
    for (int i = 0; i < size; i++){
        if (i % 2 == 0){
            intArray[(int)floor(i/2)] = buff[i] * 256;
        }
        else{
            intArray[(int)floor(i/2)] += buff[i];
        }
    }
}




