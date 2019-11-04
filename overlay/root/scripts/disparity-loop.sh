#!/bin/bash
set -o xtrace

while true
do
  taskset $1 $VISION/benchmarks/disparity/cif/disparity $VISION/benchmarks/disparity/cif
done
