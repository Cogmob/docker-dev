#!/bin/bash
# create a new tmux pane with a vim split and rename it
tmux split-window -h "zsh -is eval \"cd ~/$1\""
tmux send-keys h
cd $1 ; vim
