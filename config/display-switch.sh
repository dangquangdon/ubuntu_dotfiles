#!/bin/bash

# Detect connected monitors
INTERNAL="eDP-1-0"
EXTERNAL=$(xrandr | grep " connected" | grep -v "$INTERNAL" | awk '{print $1}' | head -n 1)

if [ -n "$EXTERNAL" ]; then
  # External monitor is connected, set it as primary
  xrandr --output "$INTERNAL" --off --output "$EXTERNAL" --primary --auto
else
  # No external monitor, use internal display
  xrandr --output "$INTERNAL" --primary --auto
fi
