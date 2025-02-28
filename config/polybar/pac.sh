#!/bin/bash
# This script outputs the number of available package updates.

# Use checkupdates if available; fallback to pacman -Qu otherwise.
if command -v checkupdates > /dev/null; then
  updates=$(checkupdates 2>/dev/null | wc -l)
else
  updates=$(pacman -Qu 2>/dev/null | wc -l)
fi

# Output the count (for polybar).
echo "$updates"
