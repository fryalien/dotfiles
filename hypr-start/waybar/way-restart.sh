#!/bin/sh

# SHUTDOWN WAYBAR
killall waybar
sleep 1

# START WAYBAR
waybar &
