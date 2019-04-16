#!/bin/bash -e
med=${1:-9}
let large=$med*4/3
let small=2
tmux resize-pane -t 1 -x $med
tmux resize-pane -t 8 -x $med
tmux resize-pane -t 4 -x $large
tmux resize-pane -t 5 -y $small
tmux resize-pane -t 6 -y $small
tmux resize-pane -t 9 -y $small
tmux resize-pane -t 0 -y $small
