#!/bin/bash
set -o xtrace

set-c012-quadcore-rdwr-split.sh 1277 7 1278
latency -c3 -m8000 -i1000000 &
bandwidth-rt -awrite -c0 -m8000 -i1 -j1000000 -l1 -t0 &
bandwidth-rt -awrite -c1 -m8000 -i1 -j1000000 -l1 -t0 &
usleep 100000
bandwidth -awrite -c2 -m8000 -i100 -t0

kill $(jobs -p)
usleep 100000

latency -c3 -m8000 -i1000000 &
bandwidth-rt -awrite -c0 -m8000 -i1 -j1000000 -l10000 -t0 &
bandwidth-rt -awrite -c1 -m8000 -i1 -j1000000 -l10000 -t0 &
usleep 100000
bandwidth -awrite -c2 -m8000 -i100 -t0

kill $(jobs -p)
usleep 100000

latency -c3 -m8000 -i1000000 &
bandwidth-rt -awrite -c0 -m8000 -i1 -j1000000 -l16000 -t0 &
bandwidth-rt -awrite -c1 -m8000 -i1 -j1000000 -l16000 -t0 &
usleep 100000
bandwidth -awrite -c2 -m8000 -i100 -t0

kill $(jobs -p)
usleep 100000

latency -c3 -m8000 -i1000000 &
bandwidth-rt -awrite -c0 -m8000 -i1 -j1000000 -l20000 -t0 &
bandwidth-rt -awrite -c1 -m8000 -i1 -j1000000 -l20000 -t0 &
usleep 100000
bandwidth -awrite -c2 -m8000 -i100 -t0

kill $(jobs -p)
usleep 100000

latency -c3 -m8000 -i1000000 &
bandwidth-rt -awrite -c0 -m8000 -i1 -j1000000 -l26666 -t0 &
bandwidth-rt -awrite -c1 -m8000 -i1 -j1000000 -l26666 -t0 &
usleep 100000
bandwidth -awrite -c2 -m8000 -i100 -t0

kill $(jobs -p)
usleep 100000

latency -c3 -m8000 -i1000000 &
bandwidth-rt -awrite -c0 -m8000 -i1 -j1000000 -l40000 -t0 &
bandwidth-rt -awrite -c1 -m8000 -i1 -j1000000 -l40000 -t0 &
usleep 100000
bandwidth -awrite -c2 -m8000 -i100 -t0

kill $(jobs -p)
