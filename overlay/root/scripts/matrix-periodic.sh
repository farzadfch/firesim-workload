#!/bin/bash

set -o xtrace

# minimum iterations for matrix01 is 11
$EEMBC/matrix01 -i11 -p4100 -r1000 -o > "$RES"
