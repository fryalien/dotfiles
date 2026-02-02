#!/usr/bin/env bash
set -e

CONF="/etc/systemd/timesyncd.conf"

# Backup the existing config
sudo cp "$CONF" "$CONF.bak.$(date +%F-%H%M%S)"

# Ensure [Time] section exists
if ! grep -q "^\[Time\]" "$CONF"; then
  echo "[Time]" | sudo tee -a "$CONF" > /dev/null
fi

# Remove existing NTP / FallbackNTP lines (commented or uncommented)
sudo sed -i \
  -e '/^[#[:space:]]*NTP=/d' \
  -e '/^[#[:space:]]*FallbackNTP=/d' \
  "$CONF"

# Insert your desired configuration under [Time]
sudo sed -i '/^\[Time\]/a NTP=0.de.pool.ntp.org 1.de.pool.ntp.org 2.de.pool.ntp.org 3.de.pool.ntp.org' "$CONF"
sudo sed -i '/NTP=0.de.pool.ntp.org 1.de.pool.ntp.org 2.de.pool.ntp.org 3.de.pool.ntp.org/a FallbackNTP=europe.pool.ntp.org' "$CONF"

# Restart time synchronization
sudo systemctl restart systemd-timesyncd

echo "✔ NTP servers set to German primary + Europe fallback."
timedatectl timesync-status || true
