//
// Created by benjamin on 17.04.20.
//

#ifndef WAVEPROJECT_TCPCLIENT_H
#define WAVEPROJECT_TCPCLIENT_H

#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <signal.h>
#include <unistd.h>

#include <iostream>
#include <vector>
#include <string>
#include <SDL_types.h>


class TCPClient {

public:

    TCPClient(std::string IPAddress, int port);
    ~TCPClient();

    void connectToHost();

    void transfer (Sint16 audioData[], int size);

private:

    void ShortIntToByteVector (Sint16 intParam[], unsigned char buffer[], int size);
    void byteVectorToInt (unsigned char buff[], Sint16 intArray[], int size);

    int m_sock;
    sockaddr_in m_hint;

    std::string m_IPAddress;
    int m_port;

    int m_connectRes;
    int m_sendRes;
    int m_recRes;
};


#endif //WAVEPROJECT_TCPCLIENT_H
