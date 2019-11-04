#!/bin/bash
#set -o xtrace

export RES=/root/results/bw-sift-loop-${1}.txt

taskset 3 hpm_counters -f
while true
do
  taskset 1 $VISION/benchmarks/sift/cif/sift $VISION/benchmarks/sift/cif
done &
while true
do
  taskset 2 $VISION/benchmarks/sift/cif/sift $VISION/benchmarks/sift/cif
done &
while true
do
  taskset 4 $VISION/benchmarks/sift/cif/sift $VISION/benchmarks/sift/cif
done &
usleep 100000
./bw-loop.sh
taskset 3 hpm_counters -f

kill $(jobs -p)
./killall.sh sift
