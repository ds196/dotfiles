#!/bin/sh

# https://github.com/polybar/polybar-scripts/tree/master/polybar-scripts/vpn-nordvpn-status

STATUS=$(nordvpn status | grep Status | tr -d ' ' | cut -d ':' -f2)

if [ "$STATUS" = "Connected" ]; then
    CITY=$(nordvpn status | grep City | cut -d ':' -f2)
    CITY=${CITY:1}
    echo "%{F#82E0AA}%{A1:nordvpn d:}$CITY%{A}%{F-}"
else
    #echo "%{F#f00}%{A1:nordvpn c:}no vpn%{A}%{F-}"
    echo ""
fi
