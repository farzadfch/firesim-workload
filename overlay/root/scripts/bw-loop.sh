#!/bin/bash
set -o xtrace

bandwidth-rt -c3 -t0 -r99 -s -awrite -m512 -d1 -i2 -j1000 -l4100 > ${RES} 2> /dev/null
