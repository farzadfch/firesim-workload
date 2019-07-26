#!/bin/bash

cd /root
./bw-reg/set-c3-old.sh $1 $2
cd vision
./run-vision-c3.sh
poweroff -f
