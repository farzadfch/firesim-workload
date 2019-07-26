#!/bin/bash

set -euo pipefail

window=$1
max=$2

devmem 0x20000000 32 0
devmem 0x20000004 32 $window
devmem 0x20000008 32 $max
devmem 0x2000000c 32 0x1
# Assign core 0 to domain 0
devmem 0x20000010 32 0
devmem 0x20000000 32 3
