#!/bin/bash

sudo podman run --name rlab-avd -it -d \
    -e AVD_MODE=demo \
    -e AVD_GIT_USER="$(git config --get user.name)" \
    -e AVD_GIT_EMAIL="$(git config --get user.email)" \
    -v ${PWD}:/home/avd/rLab:Z \
    -p 8080:8080 \
    rhub.networkrob.com/avd-code:3.8
