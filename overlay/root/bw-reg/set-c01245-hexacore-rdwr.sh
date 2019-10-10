#!/bin/bash

set -euo pipefail

window=$1
max=$2
max_write=$3

devmem 0x20000000 32 0
devmem 0x20000008 32 $window
devmem 0x2000000c 32 $max
devmem 0x20000024 32 $max_write
devmem 0x2000003c 32 0x37
# Assign cores 0,1,2,4,5 to domain 0
devmem 0x20000040 32 0
devmem 0x20000044 32 0
devmem 0x20000048 32 0
devmem 0x20000050 32 0
devmem 0x20000054 32 0
devmem 0x20000000 32 1
