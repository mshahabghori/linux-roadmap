#!/usr/bin/env bash
# Creates EMPTY placeholder "photos" for the photo-management exercise.
# It only creates files under one new folder (default: ~/photo-lab) and refuses
# to run if that folder already exists. Read it before running it.
set -euo pipefail

LAB_DIR="${1:-$HOME/photo-lab}"

if [ -e "$LAB_DIR" ]; then
  echo "Refusing to continue: $LAB_DIR already exists." >&2
  exit 1
fi

mkdir -p "$LAB_DIR/incoming"
cd "$LAB_DIR/incoming"

touch IMG_0001.jpg IMG_0002.jpg IMG_0003.jpg IMG_0004.JPG IMG_0005.png
touch "beach day 01.jpg" "beach day 02.jpg" "family photo.png"
touch screenshot_2026-08-01.png screenshot_2026-08-02.png
touch notes.txt photo-list.csv

echo "Created $(find . -type f | wc -l) placeholder files in $LAB_DIR/incoming"
