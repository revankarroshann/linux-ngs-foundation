#!/bin/bash

data=$(cat test.txt)

echo "$data" | grep 2
echo "$data" | grep 2 | wc -l
echo "$data" | sort -n
echo "$data" | sort -n | head -n 1
