#!/bin/bash
#set -o xtrace

export RES=/root/results/${1}.txt

bandwidth -awrite -m8000 -t0 -c0 2> /dev/null &
bandwidth -awrite -m8000 -t0 -c1 2> /dev/null &
bandwidth -awrite -m8000 -t0 -c2 2> /dev/null &

sleep 0.1

echo -n hpmcs,; taskset 8 hpm_counters -f
./bw-loop.sh
echo -n hpmcs,; taskset 8 hpm_counters -f

kill $(jobs -p)
