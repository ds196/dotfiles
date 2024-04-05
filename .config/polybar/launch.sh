#!/bin/bash

# Terminate already running bar instances
polybar-msg cmd quit

# Launch polybar w/ default config location ~/.config/polybar/config.ini
echo "---" | tee -a /tmp/polybar.log
polybar david 2>&1 | tee -a /tmp/polybar.log & disown

# Running bare i3 without Plasma
if [ "${DESKTOP_SESSION}" == "i3" ]; then
	polybar i3 2>&1 | tee -a /tmp/polybar.log & disown
fi

echo "Polybar launched..."
