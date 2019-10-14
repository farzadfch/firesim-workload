#!/bin/bash
set -o xtrace

set-c012-quadcore-rdwr.sh 1277 21 1278
./vision-lt.sh
