#!/bin/sh

ps aux | head -1
ps aux --cols 160 | sort -nr -k4 | head
ps aux --cols 160 | sort -nr -k4 | head | awk '{ print $1}' | sort | uniq | xargs getent passwd
