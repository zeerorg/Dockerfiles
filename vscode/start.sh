#!/bin/bash
echo "password" | sudo -S chown -R newuser:newuser /home/newuser
code
sleep 2
while [[ $(ps -A | grep code) ]]; do
    sleep 2
done
