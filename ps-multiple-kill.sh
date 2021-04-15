#!/bin/sh

FORUSER=$USER

if [[ $1 != "" ]]; then
    FORUSER=$1
fi

read -p "This will kill all processed for ${FORUSER} on csslab machines (other than the current machine). Are you sure (yes/no): " accept

if [ "yes" != "$accept" ]; then
    echo "Abort Abort Abort"
    exit 0
fi



MYMACHINE=`uname -n`

for i in {1..12}
do
    machine="csslab$i.uwb.edu"
    if  [[ $MYMACHINE != $machine ]]; then
        echo $machine
        cmd="ssh $machine 'uname -n; killall --user $FORUSER'"
        echo $cmd
        eval $cmd
    fi
done


