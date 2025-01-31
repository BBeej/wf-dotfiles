#!/bin/bash

grim
grim - | wl-copy
wl-paste > /tmp/last-screenshot.png 
viewnior /tmp/last-screenshot.png
cat /tmp/last-screenshot.png | wl-copy

mv ~/Pictures/*grim* ~/Pictures/Grim/
