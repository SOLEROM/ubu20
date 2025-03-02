#!/usr/bin/env sh

if ! { [ "$TERM" = "screen" ] && [ -n "$TMUX" ]; } then
    # Remove option --tab for new window
    xfce4-terminal --tab -e "vim \"$*\""
else
    # tmux session running
    tmux split-window -h "vim \"$*\""
fi
