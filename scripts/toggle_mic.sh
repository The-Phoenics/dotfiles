#!/bin/bash

# Arch linux + kde plasma (kde-setting -> keyboard -> shortcuts -> add-script -> add key combination shortcut)

# Get the default source (microphone)
MIC_SOURCE=$(pactl info | grep "Default Source" | cut -d ' ' -f3)

# Get the current state (muted/unmuted)
CURRENT_STATE=$(pactl get-source-mute "$MIC_SOURCE" | awk '{print $2}')

if [ "$CURRENT_STATE" == "yes" ]; then
    # Unmute the microphone
    pactl set-source-mute "$MIC_SOURCE" 0
    # Notify KDE via qdbus
    qdbus org.kde.plasmashell /org/kde/osdService org.kde.osdService.volumeChanged 0 0 "microphone"
else
    # Mute the microphone
    pactl set-source-mute "$MIC_SOURCE" 1
    # Notify KDE via qdbus
    qdbus org.kde.plasmashell /org/kde/osdService org.kde.osdService.volumeChanged 1 0 "microphone"
fi
