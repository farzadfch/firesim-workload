#!/bin/bash
set -o xtrace

RES=/root/results/lt-bww-1domain.txt

disable.sh
latency -c3 -m8000 -i10 >> $RES
bandwidth -awrite -c0 -m8000 -t0 &
bandwidth -awrite -c1 -m8000 -t0 &
bandwidth -awrite -c2 -m8000 -t0 &
usleep 100000
set-c012-quadcore-rdwr.sh 1277 3 1278
latency -c3 -m8000 -i10 >> $RES
set-c012-quadcore-rdwr.sh 1277 6 1278
latency -c3 -m8000 -i10 >> $RES
set-c012-quadcore-rdwr.sh 1277 9 1278
latency -c3 -m8000 -i10 >> $RES
set-c012-quadcore-rdwr.sh 1277 12 1278
latency -c3 -m8000 -i10 >> $RES
set-c012-quadcore-rdwr.sh 1277 15 1278
latency -c3 -m8000 -i10 >> $RES
set-c012-quadcore-rdwr.sh 1277 18 1278
latency -c3 -m8000 -i10 >> $RES
set-c012-quadcore-rdwr.sh 1277 21 1278
latency -c3 -m8000 -i10 >> $RES
set-c012-quadcore-rdwr.sh 1277 24 1278
latency -c3 -m8000 -i10 >> $RES
set-c012-quadcore-rdwr.sh 1277 27 1278
latency -c3 -m8000 -i10 >> $RES
set-c012-quadcore-rdwr.sh 1277 30 1278
latency -c3 -m8000 -i10 >> $RES
set-c012-quadcore-rdwr.sh 1277 33 1278
latency -c3 -m8000 -i10 >> $RES
set-c012-quadcore-rdwr.sh 1277 36 1278
latency -c3 -m8000 -i10 >> $RES
set-c012-quadcore-rdwr.sh 1277 39 1278
latency -c3 -m8000 -i10 >> $RES
set-c012-quadcore-rdwr.sh 1277 42 1278
latency -c3 -m8000 -i10 >> $RES
set-c012-quadcore-rdwr.sh 1277 45 1278
latency -c3 -m8000 -i10 >> $RES

kill $(jobs -p)
