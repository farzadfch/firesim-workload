#!/bin/bash
#set -o xtrace

export RES=/root/results/bw-sift-loop-${1}.txt

. /root/env.sh
taskset 3 hpm_counters -f
while true
do
  taskset 1 $VISION/benchmarks/sift/cif/sift $VISION/benchmarks/sift/cif > /dev/null
done &
while true
do
  taskset 2 $VISION/benchmarks/sift/cif/sift $VISION/benchmarks/sift/cif > /dev/null
done &
while true
do
  taskset 4 $VISION/benchmarks/sift/cif/sift $VISION/benchmarks/sift/cif > /dev/null
done &
usleep 100000
./bw-loop.sh
taskset 3 hpm_counters -f

kill $(jobs -p)
