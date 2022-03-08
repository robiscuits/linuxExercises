#!/bin/bash

dir=$1
n=$2

for i in $(find $dir -type f -size $n); do
  rm "$i"
done
