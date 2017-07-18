#!/bin/bash
# create a new tmux pane with a vim split and rename it
tmux split-window -h "zsh -is eval \"cd ~/$1\""
cd $1 ; vim
