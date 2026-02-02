#!/bin/bash

# Set sudo password timeout to 3 hours (180 minutes)
TIMEOUT=180
FILE="/etc/sudoers.d/timeout"

echo "Defaults timestamp_timeout=${TIMEOUT}" | sudo tee "$FILE" > /dev/null
sudo chmod 440 "$FILE"

echo "Sudo password timeout set to ${TIMEOUT} minutes (3 hours)."
