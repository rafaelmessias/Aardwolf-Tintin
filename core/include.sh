# Panes
PANE_PATH="/dev/shm/aardwolf"
mkdir -p $PANE_PATH
rm -rf $PANE_PATH/*

# Terminal geometry
COLS=$(tput cols)
ROWS=$(tput lines)

# Just to make sure
tmux kill-server 2>/dev/null

# TinTin++ needs these variables
cat /dev/null > core/vars.tin
echo "#var PANE_PATH {$PANE_PATH}" >> core/vars.tin
