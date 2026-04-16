#!/bin/bash

echo "Numbers containing 2:"
cat test.txt | grep 2

echo "Count:"
cat test.txt | grep 2 | wc -l

echo "Sorted numbers:"
cat test.txt | sort -n

echo "Smallest number:"
cat test.txt | sort -n | head -n 1
