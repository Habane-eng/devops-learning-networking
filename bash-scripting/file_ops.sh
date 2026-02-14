#!/bin/bash
# Directory and file automation script

DIR="bash_demo"
FILE="demo.txt"

mkdir -p "$DIR"
cd "$DIR" || exit 1

echo "This file was created by a Bash script on $(date)" > "$FILE"

echo "Directory '$DIR' created."
echo "File '$FILE' created."
echo "File contents:"
cat "$FILE"
