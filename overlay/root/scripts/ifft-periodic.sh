#!/bin/bash
set -o xtrace

taskset 8 $EEMBC/aiifft01 -i1 -p4100 -r300 -o > ${RES}
