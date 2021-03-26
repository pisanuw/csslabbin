#!/bin/sh

echo "Largest directories in megabytes for $HOME "
du -sm `ls -A $HOME` | sort -n | tail

echo "Total usage for $HOME"
du -sh $HOME