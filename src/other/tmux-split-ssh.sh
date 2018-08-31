#!/bin/bash
# create a new tmux pane with a vim split and rename it
ssh=luke@172.18.40.185
cd ~
tmux new-window -n$ssh "exec ~/unix_setup/src/other/tmux-split-ssh.sh \"$ssh\""
clear
