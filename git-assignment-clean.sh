#!/bin/bash

# To download AFTER linking each student Girthub username to netid at
# https://classroom.github.com/classrooms/54921177-2020au342c/roster
# AND downloading classroom_roster.csv into current directory
# jolly-instructor 342-C Project1 --gitdownload 2020au342c-p1-library

find . -type d -name .git -execdir rm -rf .git \;

find . -type d -name .vscode -execdir rm -rf .vscode \;

find . -name \*.dSYM -execdir rm -rf {} \;

# delete binary files
find . -type f | perl -lne 'print if -B' | xargs rm -f

du * | sort -n | tail