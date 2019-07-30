#!/bin/bash

set -euo pipefail

../riscv-hpmcounters/hpm_counters $HPM_COUNTER_INTERVAL > profile.csv &
${1} ${2}
killall hpm_counters
while pgrep hpm_counters > /dev/null; do usleep 1000; done