#!/bin/sh
# support native screen resolution for razer blade

echo "using xrandr to add 1080p support for razer blade to xubuntu..."
# 'cvt 1920 1080' command used to determine newmode
sudo xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
sudo xrandr --addmode Virtual1 "1920x1080_60.00"
echo "1080p support added for razer blade!"
