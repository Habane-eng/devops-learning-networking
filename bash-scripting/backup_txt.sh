#!/bin/bash
# Backup all .txt files from a directory

read -p "Enter source directory: " SRC

if [ ! -d "$SRC" ]; then
  echo "Source directory does not exist."
  exit 1
fi

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M")
BACKUP="backup_$TIMESTAMP"

mkdir "$BACKUP"

COUNT=$(ls "$SRC"/*.txt 2>/dev/null | wc -l)

if [ "$COUNT" -eq 0 ]; then
  echo "No .txt files to back up."
else
  cp "$SRC"/*.txt "$BACKUP"
  echo "Backup complete! Files backed up: $COUNT"
fi
