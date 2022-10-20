#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar
# # If all your bars have ipc enabled, you can use 
# # polybar-msg cmd quit
wal -R

# # Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# # Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bar1 >> /tmp/polybar1.log 2>&1 &

echo "Bars launched..."
