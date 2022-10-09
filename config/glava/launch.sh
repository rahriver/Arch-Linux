#!/usr/bin/env bash

# Terminate already running glava instances
killall -q glava

# Launch glava
glava -d >>/dev/null 2>&1 &

echo "GLava launched !"
