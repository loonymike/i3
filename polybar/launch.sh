#!/usr/bin/env sh


# Terminate already running bar instances
killall -q polybar

#wait until the processes have been shut down
while pgrep -u $IUD -x polybar >/dev/null; do sleep 1; done

# launch bar
polybar polybar &

