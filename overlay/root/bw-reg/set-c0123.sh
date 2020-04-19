#!/bin/bash

set -euo pipefail

window=$1
max_read=$2
max_write=$3

devmem 0x20000000 32 0
devmem 0x20000004 32 $window
devmem 0x20000014 32 $max_read
devmem 0x20000024 32 $max_write
devmem 0x20000028 32 0xf
# Assign cores 0,1,2,3 to domain 3
devmem 0x2000002c 32 3
devmem 0x20000030 32 3
devmem 0x20000034 32 3
devmem 0x20000038 32 3
devmem 0x20000000 32 1
