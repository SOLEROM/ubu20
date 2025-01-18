#!/bin/bash
## xrandr --listmonitors
leptop="eDP-1"
#screen="HDMI-1"
screen="DP-3-1"

curNum=$(i3-msg -t get_workspaces   | jq '.[] | select(.focused==true).num')

i3-msg workspace number 1, move workspace to output $leptop
i3-msg workspace number 2, move workspace to output $leptop
i3-msg workspace number 3, move workspace to output $screen
i3-msg workspace number 4, move workspace to output $screen
i3-msg workspace number 5, move workspace to output $screen
i3-msg workspace number 6, move workspace to output $screen
i3-msg workspace number 7, move workspace to output $screen
i3-msg workspace number 8, move workspace to output $screen
i3-msg workspace number 9, move workspace to output $screen

i3-msg workspace $curNum
