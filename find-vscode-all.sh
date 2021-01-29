#!/bin/sh

for i in {1..12}
do
    cmd="ssh csslab$i.uwb.edu 'ps aux | grep -v grep | grep vscode-server'"
    echo "==================================================="
    echo $cmd
    eval $cmd
done


