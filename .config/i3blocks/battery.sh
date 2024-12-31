#!/bin/bash

# Get battery percentage
BATTERY_PERCENTAGE=$(upower -i $(upower -e | grep BAT) | grep percentage | awk '{print $2}' | tr -d '%')
# Get charging state
CHARGING_STATE=$(upower -i $(upower -e | grep BAT) | grep state | awk '{print $2}')

# Choose emoji based on battery level
if [ $BATTERY_PERCENTAGE -ge 90 ]; then
    ICON="🔋"
elif [ $BATTERY_PERCENTAGE -ge 60 ]; then
    ICON="🔋"
elif [ $BATTERY_PERCENTAGE -ge 40 ]; then
    ICON="🔋"
elif [ $BATTERY_PERCENTAGE -ge 20 ]; then
    ICON="🔋"
else
    ICON="🪫"
fi

# If charging, add charging emoji and make text green
if [ "$CHARGING_STATE" = "charging" ]; then
    echo "<span color='#00FF00'>$ICON ⚡ $BATTERY_PERCENTAGE%</span>"
else
    # Color based on battery percentage
    if [ $BATTERY_PERCENTAGE -le 20 ]; then
        echo "<span color='#FF0000'>$ICON $BATTERY_PERCENTAGE%</span>"
    else
        echo "$ICON $BATTERY_PERCENTAGE%"
    fi
fi
