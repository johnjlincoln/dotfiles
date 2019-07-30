#!/bin/sh
# support native screen resolution for razer blade and 1440p for external
# display

echo "using xrandr to add 1080p support for razer blade..."
# 'cvt 1920 1080' command used to determine newmode
sudo xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
sudo xrandr --addmode Virtual1 "1920x1080_60.00"
echo "1080p support added!"

echo "using xrandr to add 1440p support for external display..."
# 'cvt 2560 1440' command used to determine newmode
sudo xrandr --newmode "2560x1440_60.00"  312.25  2560 2752 3024 3488  1440 1443 1448 1493 -hsync +vsync
sudo xrandr --addmode Virtual1 "2560x1440_60.00"
echo "1440p support added!"
