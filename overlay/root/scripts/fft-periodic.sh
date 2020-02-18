#!/bin/bash

set -o xtrace

$EEMBC/aifftr01 -i1 -p4100 -r1000 -o > "$RES"
