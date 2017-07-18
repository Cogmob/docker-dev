#!/bin/bash
# create a new tmux pane with a vim split and rename it
project_name=$(realpath $1* | awk -F"/" '{print $NF}')
echo 'creating tmux split for project '$project_name
tmux new-window -n$project_name "~/unix_setup/src/other/tmux-split-b.sh $project_name"
tmux select-pane -L

#sleep 3
#tmux send-keys -t $2 "cd ~/"$project_name Enter
#tmux send-keys -t $2 "clear" Enter
#tmux send-keys -t $2 "vim" Enter
#tmux send-keys -t $2 Space "t1j"
#tmux split -h
#sleep 3
#tmux send-keys -t $2 "cd ~/"$project_name Enter
#tmux send-keys -t $2 "clear" Enter
#tmux select-pane -L
#clear
