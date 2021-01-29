#!/bin/sh

for i in {1..12}
do
    machine="csslab$i.uwb.edu"
    # echo $machine
    cmd="ssh $machine 'uname -n; uptime'"
    echo $cmd
    eval $cmd
done

