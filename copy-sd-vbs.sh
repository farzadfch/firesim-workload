#!/bin/bash

set -euo pipefail


#bench_dirs=$(ls ~/cortexsuite/vision/benchmarks/*/ -d)
#echo $bench_dirs

#declare -a benches=("disparity"  "localization"  "mser"  "multi_ncut"  "pca"  "sift"  "stitch"  "svm"  "texture_synthesis"  "tracking")
declare -a benches=("disparity"  "localization"  "mser"  "multi_ncut"  "sift"  "svm"  "texture_synthesis"  "tracking")

for d in "${benches[@]}" ; do
   echo copying ${d}
   target=overlay/root/vision/benchmarks/${d}
   mkdir -p ${target}
   cp -r ~/cortexsuite/vision/benchmarks/${d}/data/* ${target}
done

