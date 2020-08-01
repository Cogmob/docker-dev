#!/bin/bash -e
med=${1:-9}
let large=$med*4/3
let small=2
tmux resize-pane -t 1 -x $small
tmux resize-pane -t 8 -x $small
tmux resize-pane -t 4 -x $small
tmux resize-pane -t 5 -y $small
tmux resize-pane -t 6 -y $small
tmux resize-pane -t 9 -y $small
tmux resize-pane -t 0 -y $small

tmux resize-pane -t 6 -x 90
tmux resize-pane -t 7 -x 80
tmux resize-pane -t 8 -x 2
