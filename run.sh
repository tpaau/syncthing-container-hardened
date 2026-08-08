#!/usr/bin/env bash

podman compose --podman-run-args "--user 0:0 --uidmap=+65534:@$(id -u) --gidmap=+65534:@$(id -g)" up
