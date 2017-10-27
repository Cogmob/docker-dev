#!/bin/bash
# create a new tmux pane with a vim split and rename it
tmux split-window -h "cd ~/$1 ; vim"
# tmux select-pane -L
# cd $1 ; vim
zsh -is eval "cd ~/$1"
