#!/bin/bash

writefile=$1
writestr=$2

if [ $# -ne 2 ]; then
    echo "Invalid number of parameters"
    exit 1
fi
echo "$writestr" > "$writefile"

if [ ! -f "$writefile" ]; then
    exit 1
fi