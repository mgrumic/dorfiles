#!/bin/bash
  
string=$(free -m | grep Mem)
used=$(echo $string | awk '{print $3}')
shared=$(echo $string | awk '{print $5}')
total=$(echo $string | awk '{print $2}')
occupied=$(echo $used + $shared | bc)

echo -e "$occupied / $total MiB"

