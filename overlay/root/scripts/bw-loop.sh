#!/bin/bash
set -o xtrace

#bandwidth-rt -c3 -t0 -r99 -s -awrite -m128 -d1 -i13 -j1000 -l4100 > ${RES} 2> /dev/null
#bandwidth-rt -c3 -t0 -r99 -s -awrite -m32 -d1 -i50 -j1000 -l4100 > ${RES} 2> /dev/null
bandwidth-rt -c3 -t0 -r99 -s -awrite -m4096 -d1 -i1 -j1000 -l4100 > ${RES} 2> /dev/null
