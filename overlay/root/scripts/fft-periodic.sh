#!/bin/bash
set -o xtrace

taskset 8 $EEMBC/aifftr01 -i1 -p4100 -r1000 -o > ${RES}
