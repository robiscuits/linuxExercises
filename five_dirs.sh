#!/bin/bash

mkdir five

for i in {1..5}; do
  mkdir "five/dir$i"
  for j in {1..5}; do
    echo $j > "five/dir$i/file$j"
  done
done 
