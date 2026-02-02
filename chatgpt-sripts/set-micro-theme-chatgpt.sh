#!/usr/bin/env bash

set -e

# Paths
MICRO_CONFIG="$HOME/.config/micro"
THEME_DIR="$MICRO_CONFIG/colorschemes"
THEME_NAME="catppuccin-mocha"
THEME_FILE="$THEME_NAME.micro"
THEME_URL="https://raw.githubusercontent.com/fryalien/dotfiles/main/themes-micro/$THEME_FILE"
SETTINGS_FILE="$MICRO_CONFIG/settings.json"

# Create directories if they don't exist
mkdir -p "$THEME_DIR"

# Download the theme
echo "Downloading Micro theme..."
curl -fsSL "$THEME_URL" -o "$THEME_DIR/$THEME_FILE"

# Create settings.json if it doesn't exist
if [ ! -f "$SETTINGS_FILE" ]; then
  echo "{}" > "$SETTINGS_FILE"
fi

# Set the colorscheme (requires jq)
if command -v jq >/dev/null 2>&1; then
  echo "Setting theme as default..."
  jq --arg theme "$THEME_NAME" '.colorscheme = $theme' \
    "$SETTINGS_FILE" > "$SETTINGS_FILE.tmp" && \
    mv "$SETTINGS_FILE.tmp" "$SETTINGS_FILE"
else
  echo "jq not found. Please install jq or edit settings.json manually:"
  echo "  \"colorscheme\": \"$THEME_NAME\""
fi

echo "Done! Restart micro to see the theme."
