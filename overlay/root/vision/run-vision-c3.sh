#!/bin/bash

set -euo pipefail

taskset 0x8 ./run-vision.sh
