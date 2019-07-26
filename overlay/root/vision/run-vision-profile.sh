#!/bin/bash

set -euo pipefail

#declare -a benches=("disparity"  "localization"  "mser"  "multi_ncut"  "sift"  "svm"  "texture_synthesis"  "tracking")
declare -a benches=("disparity"  "localization"  "mser"  "sift"  "svm"  "texture_synthesis"  "tracking")
#declare -a sizes=("sim" "sqcif" "qcif" "cif" "vga" "fullhd")
declare -a sizes=("sim" "sqcif" "qcif" "cif")

for s in "${sizes[@]}" ; do
  echo "*** Running ${s} ***"
  for b in "${benches[@]}" ; do
    if [[ $b != "svm" || $s != "vga" && $s != "fullhd" ]]; then
      echo "* ${b}"
      ../bw-reg/reset.sh
      ../riscv-hpmcounters/hpm_counters > ../results/${b}_${s}.csv &
      ./benchmarks/${b}/${s}/${b} benchmarks/${b}/${s} | tee ../results/${b}_${s}.txt
      killall hpm_counters
      while pgrep hpm_counters > /dev/null; do usleep 1000; done
    fi
  done
done
