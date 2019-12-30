#!/bin/bash
#set -o xtrace
set -eu

export RES=/root/results/fft-bww-periodic-${1}.txt

bandwidth -awrite -m8000 -t0 -c0 2> /dev/null &
bandwidth -awrite -m8000 -t0 -c1 2> /dev/null &
bandwidth -awrite -m8000 -t0 -c2 2> /dev/null &

usleep 100000

echo -n hpmcs,; taskset 3 hpm_counters -f
./fft-periodic.sh
echo -n hpmcs,; taskset 3 hpm_counters -f

kill $(jobs -p)
./killall.sh bandwidth
