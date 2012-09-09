#!/bin/bash

# Reset all pane files
echo "[CHATS/GENERAL]" > Aardwolf-chats
echo "[CHATS/PERSONAL]" > chats-personal
echo "[CHATS/TRADE]" > chats-trade

tmux bind-key -n C-a next-window -t chats
unset TMUX
tmux kill-session -t chats 
tmux new-session -d -s chats -n General "tail -fs .1 Aardwolf-chats"
tmux new-window -t chats -n Personal "tail -fs .1 chats-personal"
tmux new-window -t chats -n Trade "tail -fs .1 chats-trade"
tmux set-option -t chats status-right ""
tmux attach -t chats
