#!/bin/bash
#
#name: tmux startup script
#

cmd=$(which tmux)
session="hack4fun"

if [ -z $cmd ]; then
    echo "You need to install tmux"
    exit 1
fi

$cmd -2 has -t $session

if [ $? -ne 0 ]; then
    $cmd -2 new -d -n coding -s $session "zsh"
    $cmd -2 neww -n 4fun -t $session "zsh"
    $cmd -2 selectw -t $session:0
fi

$cmd -2 att -t $session

exit 0
