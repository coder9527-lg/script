#!/bin/bash

#用于统计文件个数
cd /data/cpd-spender-rec/logs/other

val=`ls | grep *.hprof | wc -l`

ip=`ip a | grep -Ev 'lo:|127.0.0.1|tunl'|awk -F '[ /]+' '/inet / {print $3}'|sort -t. -k 1,3 -k 4.1,4.3 -n | head -1`

echo "****\"$ip\"dumpFiles\"$val"
