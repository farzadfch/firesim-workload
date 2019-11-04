#!/bin/bash
set -o xtrace

SCRIPT=$1

./bw-solo-loop.sh $1
./$SCRIPT no-reg
set-c012-1ms-1280.sh
./$SCRIPT 1ms
set-c012-100ns-1280.sh
./$SCRIPT 100ns
