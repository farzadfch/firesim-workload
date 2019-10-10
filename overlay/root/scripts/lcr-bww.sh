#!/bin/bash
set -o xtrace

latency -c3 -m8000 -i10
bandwidth-rt -awrite -c0 -m8000 -i1 -j1000000 -l1 -t0 &
bandwidth-rt -awrite -c1 -m8000 -i1 -j1000000 -l1 -t0 &
bandwidth -awrite -c2 -m8000 -t0 &
usleep 300000
set-c012-quadcore-rdwr.sh 425 1 426
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr.sh 425 2 426
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr.sh 425 3 426
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr.sh 425 4 426
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr.sh 425 5 426
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr.sh 425 6 426
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr.sh 425 7 426
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr.sh 425 8 426
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr.sh 425 9 426
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr.sh 425 10 426
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr.sh 425 11 426
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr.sh 425 12 426
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr.sh 425 13 426
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr.sh 425 14 426
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr.sh 425 15 426
latency -c3 -m8000 -i10

kill $(jobs -p)
