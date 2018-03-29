#!/bin/bash
xhost +
docker rm vscode
docker run \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -e XAUTHORITY=$XAUTHORITY \
    --name vscode \
    vscode 
xhost -

