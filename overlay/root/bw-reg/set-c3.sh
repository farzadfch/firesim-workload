#!/bin/bash

set -euo pipefail

window=$1
max_read=$2
max_write=$3

devmem 0x20000000 32 0
devmem 0x20000004 32 $window
devmem 0x20000014 32 $max_read
devmem 0x20000024 32 $max_write
devmem 0x20000028 32 0x8
# Assign core 3 to domain 3
devmem 0x20000038 32 3
devmem 0x20000000 32 1
