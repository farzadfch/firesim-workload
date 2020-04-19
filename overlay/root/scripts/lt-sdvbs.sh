#!/bin/bash
set -o xtrace

disable.sh

taskset 1 $VISION/benchmarks/disparity/cif/disparity $VISION/benchmarks/disparity/cif &
while true
do
  taskset 2 $VISION/benchmarks/mser/cif/mser $VISION/benchmarks/mser/cif > /dev/null
done &
while true
do
  taskset 4 $VISION/benchmarks/texture_synthesis/cif/texture_synthesis $VISION/benchmarks/texture_synthesis/cif > /dev/null
done &

sleep 0.1
$1 $2 $3 $4
latency -c3 -m8000 -i10 >> $RES

kill $(jobs -p)
./killall.sh mser
./killall.sh texture_synthesis
