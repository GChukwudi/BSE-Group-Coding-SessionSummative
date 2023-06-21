#!/usr/bin/env bash
# This script will move all files in the current directory to a new directory
# named negpod_id-q1.
# Get the name of the current directory.
current_dir=$(pwd)
# Create the new directory.
mkdir negpod_id-q1
# Move all files in the current directory to the new directory.
for file in *; do
  mv "$file" negpod_id-q1
done
