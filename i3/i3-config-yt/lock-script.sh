#!/bin/bash

img=/tmp/i3lock.png

scrot -o $img
magick $img -scale 10% -scale 1000% $img

i3lock --show-failed-attempts -i $img

# LINK: https://thevaluable.dev/i3-config-mouseless/