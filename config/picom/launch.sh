#!/usr/bin/env bash

killall -q picom

echo "---" | tee -a /tmp/picom.log

sleep 1

picom --config .config/picom/picom.conf >> /tmp/picom.log 2>&1 &

echo "Picom launched..."
