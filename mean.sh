#!/bin/bash

if [[ ($# -eq 0) || ($# -gt 2) ]]; then 
    echo "usage: $0 <column> [file.csv]" 1>&2 
    exit 0

elif [[ $# -eq 1 ]]; then # Recall: 
    column=$1
    file=/dev/stdin
else
    column=$1
    file=$2
fi

cut -d "," -f $column $file | tail -n +2 | { count=0 sum=0; while read n; do count=$(($count + 1)) sum=$(($sum + $n)); done; mean=$(($sum / $count)); echo $mean; }
