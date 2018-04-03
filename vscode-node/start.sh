#!/bin/bash
echo "password" | sudo -S chown -R newuser:newuser /home/newuser
if [[ $REPO ]]; then
    git clone $REPO
    FOLDER=$(basename $REPO) && FOLDER=${FOLDER%????} && cd $FOLDER
fi
code --wait
sleep 2
while [[ $(ps -A | grep code) ]]; do
    sleep 2
done
