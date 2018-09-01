#!/bin/bash
# create a new tmux pane with a vim split and rename it
ssh="ssh luke@172.18.40.185"
echo $ssh
tmux new-window -nssh "exec ~/unix_setup/src/other/tmux-split-command.sh \"$ssh\""
