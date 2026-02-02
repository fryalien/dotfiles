#!/bin/bash

CONF_DIR="/etc/NetworkManager/conf.d"
CONF_FILE="$CONF_DIR/20-connectivity.conf"

echo "Installing NetworkManager connectivity policy..."

sudo mkdir -p "$CONF_DIR"

sudo tee "$CONF_FILE" > /dev/null << 'EOF'
[connectivity]
enabled=false
EOF

sudo chmod 644 "$CONF_FILE"

echo "Connectivity checks are now disabled by policy."
echo "Note: NetworkManager must be restarted or rebooted for this to take effect."
