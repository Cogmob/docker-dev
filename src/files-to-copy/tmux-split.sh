#!/bin/bash
# create a new tmux pane with a vim split and rename it
echo 'creating tmux split for project '$1
tmux new-window -n $1
tmux send-keys -t 1 "cd ~/"$1 Enter
tmux send-keys -t 1 "tmux split -h" Enter
tmux send-keys -t 1 "vim" Enter
tmux send-keys -t 1 Space "t1j"
sleep 4
tmux send-keys -t 1 "cd ~/"$1 Enter
tmux send-keys -t 1 "clear" Enter
tmux select-pane -L
