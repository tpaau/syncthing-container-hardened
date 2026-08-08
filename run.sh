#!/usr/bin/env bash

# Map the UID and GID of the `nobody` user inside the container to the user running this script, so
# that any changes to the mounted volumes inside the container still maintain the ownership of the
# user running the container on the host.
podman compose --podman-run-args "--uidmap=+65534:@$(id -u) --gidmap=+65534:@$(id -g)" up
