#!/bin/bash
#set -o xtrace

export RES=/root/results/bw-disparity-fhd-loop-${1}.txt

taskset 3 hpm_counters -f
while true
do
  taskset 1 $VISION/benchmarks/disparity/fullhd/disparity $VISION/benchmarks/disparity/fullhd
done &
while true
do
  taskset 2 $VISION/benchmarks/disparity/fullhd/disparity $VISION/benchmarks/disparity/fullhd
done &
while true
do
  taskset 4 $VISION/benchmarks/disparity/fullhd/disparity $VISION/benchmarks/disparity/fullhd
done &
usleep 100000
./bw-loop.sh
taskset 3 hpm_counters -f

kill $(jobs -p)
./killall.sh disparity
