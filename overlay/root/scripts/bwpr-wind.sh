#!/bin/bash
set -o xtrace

. /root/env.sh
RES=/root/results

# 1ms
set-c0-singlecore-rdwr.sh 2129999 20000 2130000
bandwidth-rt -m64 -i1 -j25 -l200 > $RES/bwpr-1ms.txt
# 200ns
set-c0-singlecore-rdwr.sh 425 4 426
bandwidth-rt -m64 -i1 -j25 -l200 > $RES/bwpr-200ns.txt
