#!/bin/bash
set -o xtrace

taskset 8 $EEMBC/cacheb01 -i5000 -p4100 -r300 -o > ${RES}
