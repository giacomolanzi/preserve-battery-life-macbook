#!/bin/zsh

# Set variables for battery
battery=$(pmset -g ps | egrep -o "(\d+)%" | egrep -o "\d+")
btrChrg=$(pmset -g ps)

# Set variables for WiFi bssid
bssid=$(networksetup -getairportnetwork en0 | cut -c 24-)

# Set variables for backup phase
tmutil_phase=$(tmutil currentphase)

# Set variable for poweroutlet command
power_on=http://192.168.178.21/cm\?cmnd\=Power%20on
power_off=http://192.168.178.21/cm\?cmnd\=Power%20off

# Actual script

if [[ "$bssid" == "Vodafone-C7CC" && "$tmutil_phase" == "BackupNotRunning" ]]; then
        if (( $battery >= 92 )); then
                curl -qs --url $power_off
        elif (( $battery <= 15 )); then
                echo "Battery under 20, swicthing the plug on"
                curl -qs --url $power_on
        fi
fi
