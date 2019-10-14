#!/bin/bash
set -o xtrace

latency -c3 -m8000 -i1000000 &
while true
do
   taskset 1 $VISION/benchmarks/texture_synthesis/cif/texture_synthesis $VISION/benchmarks/texture_synthesis/cif > /dev/null
done &
while true
do
   taskset 2 $VISION/benchmarks/texture_synthesis/cif/texture_synthesis $VISION/benchmarks/texture_synthesis/cif > /dev/null
done &
#usleep 100000
taskset 4 $VISION/benchmarks/disparity/cif/disparity $VISION/benchmarks/disparity/cif
kill $(jobs -p)

usleep 100000

latency -c3 -m8000 -i1000000 &
while true
do
   taskset 1 $VISION/benchmarks/mser/cif/mser $VISION/benchmarks/mser/cif > /dev/null
done &
while true
do
   taskset 2 $VISION/benchmarks/mser/cif/mser $VISION/benchmarks/mser/cif > /dev/null
done &
#usleep 100000
taskset 4 $VISION/benchmarks/disparity/cif/disparity $VISION/benchmarks/disparity/cif
kill $(jobs -p)

usleep 100000

latency -c3 -m8000 -i1000000 &
while true
do
   taskset 1 $VISION/benchmarks/disparity/cif/disparity $VISION/benchmarks/disparity/cif > /dev/null
done &
while true
do
   taskset 2 $VISION/benchmarks/disparity/cif/disparity $VISION/benchmarks/disparity/cif > /dev/null
done &
#usleep 100000
taskset 4 $VISION/benchmarks/disparity/cif/disparity $VISION/benchmarks/disparity/cif
kill $(jobs -p)
