#!/bin/bash

# kill all polybar instances
killall -q polybar

# wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch polybar, using default config location 
# ~/.config/polybar/config
polybar mybar &

echo "Polybar launched..."
