#!/bin/bash
code
sleep 2
while [[ $(ps -A | grep code) ]]; do
    sleep 2
done
