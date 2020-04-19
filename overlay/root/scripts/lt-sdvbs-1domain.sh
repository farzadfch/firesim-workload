#!/bin/bash
set -o xtrace

export RES=/root/results/lt-sdvbs-1domain.txt

latency -c3 -m8000 -i10 >> $RES

./lt-sdvbs.sh set-c012-quadcore-rdwr.sh 1277 3 1278

./lt-sdvbs.sh set-c012-quadcore-rdwr.sh 1277 6 1278

./lt-sdvbs.sh set-c012-quadcore-rdwr.sh 1277 9 1278

./lt-sdvbs.sh set-c012-quadcore-rdwr.sh 1277 12 1278

./lt-sdvbs.sh set-c012-quadcore-rdwr.sh 1277 15 1278

./lt-sdvbs.sh set-c012-quadcore-rdwr.sh 1277 18 1278

./lt-sdvbs.sh set-c012-quadcore-rdwr.sh 1277 21 1278

./lt-sdvbs.sh set-c012-quadcore-rdwr.sh 1277 24 1278

./lt-sdvbs.sh set-c012-quadcore-rdwr.sh 1277 27 1278

./lt-sdvbs.sh set-c012-quadcore-rdwr.sh 1277 30 1278

./lt-sdvbs.sh set-c012-quadcore-rdwr.sh 1277 33 1278

./lt-sdvbs.sh set-c012-quadcore-rdwr.sh 1277 36 1278

./lt-sdvbs.sh set-c012-quadcore-rdwr.sh 1277 39 1278

./lt-sdvbs.sh set-c012-quadcore-rdwr.sh 1277 42 1278

./lt-sdvbs.sh set-c012-quadcore-rdwr.sh 1277 45 1278
