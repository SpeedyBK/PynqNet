#!/bin/bash
# set n to 1
n=1

cd ..
cd py\

python TCPClient.py -s 192.168.2.119 -p 7 00000000

# continue until $n equals 5
while [ $n -le 99999999 ]
do
	echo "Looping $n times."
	python TCPClient.py -s 192.168.2.119 -p 7 $n
	n=$(( n+1 ))	 # increments $n
done

