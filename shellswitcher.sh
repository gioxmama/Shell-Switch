#!/bin/bash

# store the name of the current shell
CURRENT_SHELL=$(echo $SHELL | awk -F / '{print $NF}')

# check if the current shell is zsh
if [ "$CURRENT_SHELL" = "zsh" ]; then
    # switch to bash
    chsh -s /bin/bash
    echo "Switched to bash"
else
    # switch to zsh
    chsh -s /bin/zsh
    echo "Switched to zsh"
fi