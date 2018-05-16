#!/bin/bash
# create a new tmux pane with a vim split and rename it
tmux split-window -h "cd ~/$1 ; vim readme.md"
zsh -is eval "cd ~/$1"
