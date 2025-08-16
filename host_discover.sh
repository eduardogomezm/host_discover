#!/bin/bash

detect_devices(){
ping -c 1 $1 > /dev/null
[ $? -eq 0 ] && echo "There is a device connected with ip $1"

}

for i in 192.168.1.{1..254};
do
	detect_devices $i &
done
