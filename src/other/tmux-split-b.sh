#!/bin/bash

if [ -z $1 ]; then
    tmux rename-window 'home'
fi

# create a new tmux pane with a vim split and rename it
tmux split-window -h "cd ~/$1 ; vim readme.md"

tmux split-window -b -l 1 -t 0 "read"
tmux split-window -l 1 -t 1 "read"
tmux split-window -b -l 1 -t 3 "read"
tmux split-window -l 1 -t 4 "read"

tmux split-window -h -l 12 -t 1 "read"
tmux split-window -bh -l 12 -t 1 "read"
tmux split-window -h -l 12 -t 6 "read"

tmux select-pane -t 2

zsh -is eval "cd ~/$1"
