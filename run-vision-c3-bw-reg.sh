#!/bin/bash

cd /root
./bw-reg/set-c3.sh $1 $2 $3
cd vision
./run-vision-c3.sh
poweroff -f
