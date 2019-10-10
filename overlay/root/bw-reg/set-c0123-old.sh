#!/bin/bash

set -euo pipefail

window=$1
max=$2

devmem 0x20000000 32 0
devmem 0x20000004 32 $window
devmem 0x20000014 32 $max
devmem 0x20000018 32 0xf
# Assign cores 0,1,2,3 to domain 3
devmem 0x2000001c 32 3
devmem 0x20000020 32 3
devmem 0x20000024 32 3
devmem 0x20000028 32 3
devmem 0x20000000 32 3
