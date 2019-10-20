#!/bin/bash
set -o xtrace

export RESULTS=/root/results/3domain-solo
mkdir $RESULTS
set-c012-quadcore-rdwr-split.sh 1277 7 1278
./vision-lt-solo.sh
