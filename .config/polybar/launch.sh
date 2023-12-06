#!/bin/bash

# Terminate already running bar instances
polybar-msg cmd quit

# Launch polybar w/ default config location ~/.config/polybar/config.ini
echo "---" | tee -a /tmp/polybar.log
polybar david 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
