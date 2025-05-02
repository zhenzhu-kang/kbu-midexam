#! /usr/bin/env bash

count=$(grep -o '[aeiouAEIOU]' sample.txt | wc -l)
echo "Total vowels: $count"

