#!/bin/bash

# Start a new tmux session
tmux new-session -d -s myollama

# Split the first pane horizontally
tmux split-window -h
# Split the second pane vertically
tmux select-pane -t 1  # Select the second pane
tmux split-window -v

tmux send-keys -t 1 "ollama serve" C-m
tmux send-keys -t 2 "nvtop" C-m

tmux select-pane -t 0

# Attach to the session
tmux attach-session -t myollama
