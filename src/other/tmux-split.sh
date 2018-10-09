#!/bin/bash
# create a new tmux pane with a vim split and rename it
project_name=$(realpath ~/$1* | awk -F"/" '{print $NF}')
cd ~
tmux new-window -n$project_name "exec ~/unix_setup/src/other/tmux-split-b.sh $project_name"
clear
