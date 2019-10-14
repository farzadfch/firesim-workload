#!/bin/bash
set -o xtrace

set-c012-quadcore-rdwr-split.sh 1277 7 1278
./vision-lt.sh
