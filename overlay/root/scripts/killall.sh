#!/bin/bash
#set -o xtrace

PROC=$1

echo -n "Killing $PROC "
killall -9 $PROC
while [ $? -eq 0 ]
do
  echo -n .
  usleep 100000
  killall -9 $PROC
done
echo "Killed $PROC"
