#!/bin/bash
## xrandr --listmonitors
leptop="eDP-1"
screen1="DP-3-1"
screen2="HDMI-1"

curName=$(i3-msg -t get_workspaces   | jq '.[] | select(.focused==true).name')

i3-msg workspace number 1, move workspace to output $screen2
i3-msg workspace number 2, move workspace to output $leptop
i3-msg workspace number 3, move workspace to output $screen1
i3-msg workspace number 4, move workspace to output $leptop
i3-msg workspace number 5, move workspace to output $screen1
i3-msg workspace number 6, move workspace to output $screen1
i3-msg workspace number 7, move workspace to output $leptop
i3-msg workspace number 8, move workspace to output $leptop
#i3-msg workspace number 9, move workspace to output $leptop

i3-msg workspace $curName
