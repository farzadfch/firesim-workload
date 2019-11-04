#!/bin/bash
set -o xtrace

set-c0-singlecore-rdwr.sh 425 1 426
cd $VISION
./run-vision.sh
