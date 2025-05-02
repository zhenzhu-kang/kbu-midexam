#!/bin/bash

if [ $# -eq 0 ]; then
  echo "No numbers provided"
else
  sum=0
  for num in "$@"; do
    if [[ "$num" =~ ^[0-9]+$ ]]; then
      sum=$((sum + num))
    else
      echo "Warning: '$num' is not a valid number and will be ignored."
    fi
  done
  echo "$sum"
fi