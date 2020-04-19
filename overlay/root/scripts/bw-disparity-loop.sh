#!/bin/bash
#set -o xtrace

export RES=/root/results/${1}.txt

while true
do
  taskset 1 $VISION/benchmarks/disparity/cif/disparity $VISION/benchmarks/disparity/cif
done &
while true
do
  taskset 2 $VISION/benchmarks/disparity/cif/disparity $VISION/benchmarks/disparity/cif
done &
while true
do
  taskset 4 $VISION/benchmarks/disparity/cif/disparity $VISION/benchmarks/disparity/cif
done &

sleep 0.1

echo -n hpmcs,; taskset 8 hpm_counters -f
./bw-loop.sh
echo -n hpmcs,; taskset 8 hpm_counters -f

kill $(jobs -p)
