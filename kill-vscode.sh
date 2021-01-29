#!/bin/sh

echo "ps aux | grep $USER | grep vscode | awk '{print $2}' | xargs kill -9"

ps aux | grep $USER | grep vscode | awk '{print $2}' | xargs kill -9
