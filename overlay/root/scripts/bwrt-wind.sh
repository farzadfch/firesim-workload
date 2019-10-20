#!/bin/bash
set -o xtrace

RES=/root/results
. /root/env.sh
# 1ms
set-c0-singlecore-rdwr.sh 2129999 20000 2130000
bandwidth-rt -m64 -i1 -j25 -l200 > $RES/bwrt-1ms.txt
# 100ns
set-c0-singlecore-rdwr.sh 212 2 213
bandwidth-rt -m64 -i1 -j25 -l200 > $RES/bwrt-100ns.txt
