#!/bin/bash

# git checkout --orphan newBranch
# git add -A  # Add all files and commit them
# git commit -m "start"
# git branch -D master  # Deletes the master branch
# git branch -m master  # Rename the current branch to master
# git push -f origin master  # Force push master branch to github
# git gc --aggressive --prune=all     # remove the old files

FOO=`git config --get remote.origin.url`

# https://gist.github.com/stephenhardy/5470814
# -- Remove the history from 
rm -rf .git

# -- recreate the repos from the current content only
git init
git add .
git commit -m "start"

git remote add origin ${FOO}
git push -u --force origin master
