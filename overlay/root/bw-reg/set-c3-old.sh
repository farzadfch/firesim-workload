#!/bin/bash

set -euo pipefail

window=$1
max=$2

devmem 0x20000000 32 0
devmem 0x20000004 32 $window
devmem 0x20000014 32 $max
devmem 0x20000018 32 0x8
# Assign core 3 to domain 3
devmem 0x20000028 32 3
devmem 0x20000000 32 3
