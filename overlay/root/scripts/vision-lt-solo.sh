#!/bin/bash
set -o xtrace

taskset 1 $VISION/benchmarks/disparity/cif/disparity $VISION/benchmarks/disparity/cif > $RESULTS/disparity.txt
taskset 2 $VISION/benchmarks/mser/cif/mser $VISION/benchmarks/mser/cif > $RESULTS/mser.txt
taskset 4 $VISION/benchmarks/texture_synthesis/cif/texture_synthesis $VISION/benchmarks/texture_synthesis/cif > $RESULTS/texture_synthesis.txt
