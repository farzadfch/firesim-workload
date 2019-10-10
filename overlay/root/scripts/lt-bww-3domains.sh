#!/bin/bash
set -o xtrace

latency -c3 -m8000 -i10
bandwidth -awrite -c0 -m8000 -t0 &
bandwidth -awrite -c1 -m8000 -t0 &
bandwidth -awrite -c2 -m8000 -t0 &
usleep 100000
set-c012-quadcore-rdwr-split.sh 1277 1 1278
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr-split.sh 1277 2 1278
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr-split.sh 1277 3 1278
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr-split.sh 1277 4 1278
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr-split.sh 1277 5 1278
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr-split.sh 1277 6 1278
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr-split.sh 1277 7 1278
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr-split.sh 1277 8 1278
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr-split.sh 1277 9 1278
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr-split.sh 1277 10 1278
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr-split.sh 1277 11 1278
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr-split.sh 1277 12 1278
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr-split.sh 1277 13 1278
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr-split.sh 1277 14 1278
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr-split.sh 1277 15 1278
latency -c3 -m8000 -i10
set-c012-quadcore-rdwr-split.sh 1277 16 1278
latency -c3 -m8000 -i10

kill $(jobs -p)
