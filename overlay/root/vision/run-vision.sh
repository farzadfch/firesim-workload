#!/bin/bash

set -euo pipefail

#declare -a benches=("disparity"  "localization"  "mser"  "multi_ncut"  "sift"  "svm"  "texture_synthesis"  "tracking")
declare -a benches=("disparity"  "localization"  "mser"  "sift"  "svm"  "texture_synthesis"  "tracking")
#declare -a benches=("localization")
#declare -a sizes=("sim" "sqcif" "qcif" "cif" "vga" "fullhd")
#declare -a sizes=("sim" "sqcif" "qcif" "cif" "vga")
declare -a sizes=("cif")
#declare -a sizes=("vga")

for s in "${sizes[@]}" ; do
  echo "*** Running ${s} ***"
  for b in "${benches[@]}" ; do
    if [[ $b != "svm" || $s != "vga" && $s != "fullhd" ]]; then
      echo "* ${b}"
      #../bw-reg/reset.sh
      ./benchmarks/${b}/${s}/${b} benchmarks/${b}/${s} | tee ../results/${b}_${s}.txt
    fi
  done
done
