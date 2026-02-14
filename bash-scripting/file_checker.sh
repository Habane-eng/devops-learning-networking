#!/bin/bash
# File existence and permission checker

read -p "Enter filename to check: " file

if [ -e "$file" ]; then
  echo "File '$file' exists."

  [ -r "$file" ] && echo "✓ Readable" || echo "✗ Not readable"
  [ -w "$file" ] && echo "✓ Writable" || echo "✗ Not writable"
  [ -x "$file" ] && echo "✓ Executable" || echo "✗ Not executable"
else
  echo "File does not exist."
fi
