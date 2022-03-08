#!/bin/bash

sum=0
pattern="[01][01][01][01]"
for i in $(seq {1000,2000}); do
    if [[ $i =~ $pattern ]]; then
	sum=$(($sum + $i))
    fi
done	 
echo $sum
