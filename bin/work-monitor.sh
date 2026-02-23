#!/bin/bash

# Your target EDID (first few characters)
SAMSUNG_ULTRAWIDE_EDID="00ffffffffffff004c2d720f314c5843"
LENOVO_EDID="00ffffffffffff0006af91d200000000"
ARZOPA_EDID="00ffffffffffff001ee4560100012499"

# Find which output name currently has that EDID
SAMSUNG_ULTRAWIDE_OUTPUT=$(xrandr --prop | grep -B2 "$SAMSUNG_ULTRAWIDE_EDID" | grep "connected" | awk '{print $1}')
ARZOPA_OUTPUT=$(xrandr --prop | grep -B2 "$ARZOPA_EDID" | grep "connected" | awk '{print $1}')
LENOVO_OUTPUT=$(xrandr --prop | grep -B2 "$LENOVO_EDID" | grep "connected" | awk '{print $1}')

# Samsung UltraWide
xrandr --output $SAMSUNG_ULTRAWIDE_OUTPUT --mode 3440x1440 --pos 0x0

# External Monitor Arzopa
xrandr --output $ARZOPA_OUTPUT --mode 1920x1080 --pos 1520x1440

# Lenovo Monitor
xrandr --output $LENOVO_OUTPUT --off

