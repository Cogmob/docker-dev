#!/bin/bash

if [ -n "$2" ]; then
    tmux rename-window $2
fi

# right page
tmux split-window -h "cd ~/$1 ; zsh -is eval \"cd ~/$1 ; vim\""

tmux split-window -b -l 0 -t 0 "read"
tmux split-window -l 0 -t 1 "read"
tmux split-window -b -l 0 -t 3 "read"
tmux split-window -l 0 -t 4 "read"

# middle
tmux split-window -h -l 12 -t 1 "read"
# left
tmux split-window -bh -l 9 -t 1 "read"
# right
tmux split-window -h -l 9 -t 6 "read"

# left page
tmux split-window -t 2 -l 0 "zsh -is eval \"cd ~/$1\"" ; tmux select-pane -t 7 ; zsh -is eval "cd ~/$1"
