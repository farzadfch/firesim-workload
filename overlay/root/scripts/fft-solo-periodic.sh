#!/bin/bash
#set -o xtrace
set -eu

export RES=/root/results/fft-solo-periodic.txt

echo -n hpmcs,; taskset 3 hpm_counters -f
./fft-periodic.sh
echo -n hpmcs,; taskset 3 hpm_counters -f
