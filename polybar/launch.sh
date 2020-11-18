#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

polybar top >>/tmp/polybar1.log 2>&1 & disown
polybar bar2 >>/tmp/polybar1.log 2>&1 & disown

