#!/bin/bash

#set -o xtrace
set -eu

export RES=/root/results/solo.txt

echo -n hpmcs,; taskset 8 hpm_counters -f
taskset 8 ./fft-periodic.sh
echo -n hpmcs,; taskset 8 hpm_counters -f
