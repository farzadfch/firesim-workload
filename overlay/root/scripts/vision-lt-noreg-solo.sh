#!/bin/bash
set -o xtrace

export RESULTS=/root/results/noreg-solo
mkdir $RESULTS
./vision-lt-solo.sh
