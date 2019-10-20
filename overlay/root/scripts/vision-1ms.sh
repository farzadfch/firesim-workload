#!/bin/bash
set -o xtrace

. /root/env.sh
set-c0-singlecore-rdwr.sh 2129999 5000 2130000
cd $VISION
./run-vision.sh
