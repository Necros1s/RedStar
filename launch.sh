#!/bin/bash

# Terminate already running bar instances
pkill polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -c $HOME/.config/polybar/simple/config bar &

echo "Launching all the polybar modules..."
