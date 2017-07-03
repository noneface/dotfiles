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

$cmd has -t $session

if [ $? -ne 0 ]; then
    $cmd new -d -n coding -s $session "vim"
    $cmd splitw -v -p 15 -t $session "bash"
    $cmd neww -n bash -t $session "bash"
    $cmd splitw -h -p 50 -t $session "bash"
    $cmd selectw -t $session:0
fi

$cmd att -t $session

exit 0
