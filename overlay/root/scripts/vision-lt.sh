#!/bin/bash
set -o xtrace

while true
do
  latency -c3 -m8000 -i100 >> $RESULTS/latency.txt
done &
while true
do
   taskset 2 $VISION/benchmarks/mser/cif/mser $VISION/benchmarks/mser/cif >> $RESULTS/mser.txt
done &
while true
do
   taskset 4 $VISION/benchmarks/texture_synthesis/cif/texture_synthesis $VISION/benchmarks/texture_synthesis/cif >> $RESULTS/texture_synthesis.txt
done &
taskset 1 $VISION/benchmarks/disparity/cif/disparity $VISION/benchmarks/disparity/cif > $RESULTS/disparity.txt
kill $(jobs -p)
