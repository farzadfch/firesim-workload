#!/bin/bash

cd /root
./bw-reg/set-c0-singlecore.sh $1 $2
cd vision
./run-vision-c0.sh
poweroff -f
