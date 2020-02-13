#!/bin/bash
set -o xtrace

. /root/env.sh
RES=/root/results

# 2ms
set-c0123-quadcore-rdwr.sh 4259999 40000 4260000
taskset 8 bandwidth-rt -m64 -i1 -j25 -l200 > $RES/bwpr-2ms.txt
# 200ns
set-c0123-quadcore-rdwr.sh 425 4 426
taskset 8 bandwidth-rt -m64 -i1 -j25 -l200 > $RES/bwpr-200ns.txt
