##!/bin/bash
# set n to 1
n=1

cd ..
cd py\

python TCPClient.py -s 192.168.1.10 -p 8000 00000000

# continue until $n equals 5
while [ $n -le 2000000 ]
do
	echo "Looping $n times."
	if [ $n -le 10 ]
	then
		python TCPClient.py -s 192.168.1.10 -p 8000 0000000$n
	elif [ $n -le 100 ]
	then
                python TCPClient.py -s 192.168.1.10 -p 8000 000000$n
        elif [ $n -le 1000 ]
        then
                python TCPClient.py -s 192.168.1.10 -p 8000 00000$n
        elif [ $n -le 10000 ]
        then
                python TCPClient.py -s 192.168.1.10 -p 8000 0000$n
        elif [ $n -le 100000 ]
        then
                python TCPClient.py -s 192.168.1.10 -p 8000 000$n
        elif [ $n -le 1000000 ]
        then
                python TCPClient.py -s 192.168.1.10 -p 8000 00$n
        elif [ $n -le 10000000 ]
        then
                python TCPClient.py -s 192.168.1.10 -p 8000 0$n
        elif [ $n -le 100000000 ]
        then
                python TCPClient.py -s 192.168.1.10 -p 8000 $n
	else
		break
	fi
	n=$(( n+1 ))	 # increments $n
done

