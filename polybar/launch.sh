#!/bin/bash

# kill all polybar instances
killall -q polybar

# wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch polybar, using default config location 
# ~/.config/polybar/config

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload mybar &
  done
else
  polybar --reload mybar &
fi

echo "Polybar launched..."
