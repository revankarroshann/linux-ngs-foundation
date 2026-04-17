#!/bin/bash

echo "Up genes:"
grep "up" genes.csv

echo "Gene names with value < 10:"
awk -F, '$2 < 10 {print $1}' genes.csv

echo "Up genes with value > 10:"
awk -F, '$2 > 10 && $3 == "up" {print $1}' genes.csv

echo "Count of down genes:"
grep "down" genes.csv | wc -l

echo "Gene with highest value:"
awk -F, '{print $2, $1}' genes.csv | sort -n | tail -n1 | awk '{print $2}'
