//
// Created by benjamin on 04.11.19.
//

#include <cstring>
#include "Base.h"
#include "Exception.h"

namespace ZyNet {

    Base::Base() {

    }

    void Base::createSocket() {
        this->listening = socket(AF_INET, SOCK_STREAM, 0);
        if (this->listening == -1) {
            throw ZyNet::Exception("Could not create socket!");
        }
    }

    void Base::bindtoIP() {
        this->hint.sin_family = AF_INET;
        this->hint.sin_port = htons(54000);
        inet_pton(AF_INET, "0.0.0.0", &this->hint.sin_addr);
        if (bind(this->listening, (sockaddr *) &this->hint, sizeof(this->hint)) == -1) {
            throw ZyNet::Exception("Can not bind IP/Port!");
        }
    }

    void Base::socklisten() {
        if (listen(this->listening, SOMAXCONN) == -1) {
            throw ZyNet::Exception("Can not listen!");
        }
    }

    void Base::acceptCall() {
        this->clientsize = sizeof(this->client);
        this->clientsocket = accept(this->listening, (sockaddr *) &this->client, &this->clientsize);
        if (this->clientsocket == -1) {
            throw ZyNet::Exception("Problem with client connecting!");
        }
    }

    void Base::closeSocket() {
        close(this->listening);
        memset(this->host, 0, NI_MAXHOST);
        memset(this->services, 0, NI_MAXSERV);
        result = getnameinfo((sockaddr *) &this->client, sizeof(this->client), this->host, NI_MAXHOST, this->services,
                             NI_MAXSERV, 0);

        if (result) {
            std::cout << this->host << " connected on " << this->services << std::endl;
        } else {
            inet_ntop(AF_INET, &this->client.sin_addr, this->host, NI_MAXHOST);
            std::cout << this->host << " connected on " << ntohs(this->client.sin_port) << std::endl;
        }
    }

    void Base::displayMessage() {

        int i = 0;

        while(true){
            //clear Buffer
            memset(this->buffer, 0, sizeof(this->buffer));
            //Wait for a Message
            this->bytesReceived=recv(this->clientsocket, this->buffer, sizeof(this->buffer), 0);
            if (this->bytesReceived == -1){
                throw ZyNet::Exception("There is a connection problem!");
            }
            if(this->bytesReceived == 0){
                std::cout << "Client disconnected!" << std::endl;
                break;
            }
            std::cout << "Received: " << std::string(this->buffer, 0, this->bytesReceived) << std::endl;
            //Doing stuff with message:
            stupidthings();
            send(this->clientsocket, this->buffer, bytesReceived+1, 0);
        }
        close(this->clientsocket);
    }

    void Base::stupidthings() {
        //Do Nothing
    }
}
