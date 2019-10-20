#!/bin/bash
#set -o xtrace

for i in {0..99}
do
  echo -n "$i "
  bandwidth -awrite -m64 -i70 -c3 >> ${RES} 2> /dev/null
  #taskset 3 hpm_counters -f >> ${RES}
done
echo
