#!/bin/bash
set -o xtrace

. /root/env.sh
# 1ms
set-c0-singlecore-rdwr.sh 2129999 20000 2130000
hpm_counters -f & bandwidth-rt -m64 -i1 -j50 -l200; killall hpm_counters
## 100us
#set-c0-singlecore-rdwr.sh 212999 2000 213000
#hpm_counters -f & bandwidth-rt -m64 -i1 -j50 -l200; killall hpm_counters
## 10us
#set-c0-singlecore-rdwr.sh 21299 200 21300
#hpm_counters -f & bandwidth-rt -m64 -i1 -j50 -l200; killall hpm_counters
## 1us
#set-c0-singlecore-rdwr.sh 2129 20 2130
#hpm_counters -f & bandwidth-rt -m64 -i1 -j50 -l200; killall hpm_counters
# 100ns
set-c0-singlecore-rdwr.sh 212 2 213
hpm_counters -f & bandwidth-rt -m64 -i1 -j50 -l200; killall hpm_counters
