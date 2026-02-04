#!/bin/bash

# Folder to download
TARGET_DIR=~/.var/app/org.geany.Geany/config/geany/colorschemes/
mkdir -p "$TARGET_DIR"

# GitHub repo details
USER=fryalien
REPO=dotfiles
FOLDER=themes-geany
BRANCH=main

# Get list of files in the folder using GitHub API
FILES=$(curl -s "https://api.github.com/repos/$USER/$REPO/contents/$FOLDER?ref=$BRANCH" | \
        grep '"download_url":' | sed -E 's/.*"([^"]+)".*/\1/')

# Download each file
for FILE_URL in $FILES; do
    FILENAME=$(basename "$FILE_URL")
    echo "Downloading $FILENAME..."
    curl -sL "$FILE_URL" -o "$TARGET_DIR/$FILENAME"
done

echo "All files downloaded to $TARGET_DIR"
