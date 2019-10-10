#!/bin/bash

set -euo pipefail

window=$1
max=$2
max_write=$3

devmem 0x20000000 32 0
devmem 0x20000008 32 $window
devmem 0x2000000c 32 $max
devmem 0x20000010 32 $max
devmem 0x20000014 32 $max
devmem 0x2000001c 32 $max_write
devmem 0x20000020 32 $max_write
devmem 0x20000024 32 $max_write
devmem 0x2000002c 32 0x7
# Assign cores 0,1,2 to domains 0,1,2
devmem 0x20000030 32 0
devmem 0x20000034 32 1
devmem 0x20000038 32 2
devmem 0x20000000 32 1
