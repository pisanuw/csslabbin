#!/bin/sh

FORUSER=$USER

if [[ $1 != "" ]]; then
    FORUSER=$1
fi

MYMACHINE=`uname -n`

for i in {1..12}
do
    machine="csslab$i.uwb.edu"
    if  [[ $MYMACHINE != $machine ]]; then
        echo $machine
        cmd="ssh $machine 'uname -n; ps -ef | grep $FORUSER'"
        echo $cmd
        eval $cmd
    fi
done


