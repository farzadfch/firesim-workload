#!/bin/bash
set -o xtrace

export RESULTS=/root/results/1domain
mkdir $RESULTS
set-c012-quadcore-rdwr.sh 1277 12 1278
./vision-lt.sh
