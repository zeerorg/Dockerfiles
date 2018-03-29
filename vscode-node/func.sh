#!/bin/bash
xhost +local:
docker rm vscode
docker run \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -e XAUTHORITY=$XAUTHORITY \
    -v $HOME/docker/vscode:/home/newuser \
    --name vscode \
    vscode 
xhost -

