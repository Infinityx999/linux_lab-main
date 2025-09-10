#!/bin/bash

# Create backup directory if it doesn't exist
mkdir -p backup

# Get current timestamp in YYYYMMDD_HHMMSS format
timestamp=$(date +"%Y%m%d_%H%M%S")

# Find all .txt files in the current directory and copy them with timestamp
for file in *.txt
do
  # Check if the file exists (in case no .txt files are found)
  if [ ! -e "$file" ]; then
    echo "No .txt files found to backup."
    exit 0
  fi
  # Copy with timestamp appended before the extension
  cp "$file" "backup/${file%.txt}_$timestamp.txt"
done

echo "Backup completed."
