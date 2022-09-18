#!/usr/bin/env sh

#kill all scripts (arch_updates)
kill -9 -$(ps -o pgid -p $(cat ~/.config/polybar/scripts/arch/arch_updates.pid) | tail -n1 | sed 's/^[ \t]*//;s/[ \t]*$//')
kill -9 $(cat ~/.config/polybar/scripts/arch/polybar_updates.pid)

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bar1 >> /tmp/polybar1.log 2>&1 &

# Launch arch_updates script
arch_updates & echo $! > ~/.config/polybar/scripts/arch/arch_updates.pid
echo "Bars launched..."
