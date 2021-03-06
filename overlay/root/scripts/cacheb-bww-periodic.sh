#!/bin/bash
#set -o xtrace

export RES=/root/results/cacheb-bww-periodic-${1}.txt

taskset 3 hpm_counters -f
bandwidth -awrite -m8000 -t0 -c0 2> /dev/null &
bandwidth -awrite -m8000 -t0 -c1 2> /dev/null &
bandwidth -awrite -m8000 -t0 -c2 2> /dev/null &
usleep 100000
./cacheb-periodic.sh
taskset 3 hpm_counters -f

kill $(jobs -p)
./killall.sh bandwidth
