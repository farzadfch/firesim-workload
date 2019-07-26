#!/bin/bash

set -euo pipefail

taskset 0x1 ./run-vision.sh
