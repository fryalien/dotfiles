#!/bin/bash

sudo sh -c 'echo "Defaults timestamp_timeout=180" > /etc/sudoers.d/timeout'
sudo chmod 440 /etc/sudoers.d/timeout

echo "Sudo password timeout set to 180 minutes (3 hours)."
