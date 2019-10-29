#!/bin/bash
set -o xtrace

bandwidth-rt -s -c3 -t0 -awrite -m4096 -i1 -j1000 -l4100 > ${RES} 2> /dev/null
