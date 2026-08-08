# syncthing-container-hardened

Simple and secure podman container that runs `syncthing` inside a podman container. Builds on top of
the [`syncthing:latest`](https://hub.docker.com/r/syncthing/syncthing) container and implements some
additional security measures.

Might also work with Docker but I wouldn't know

> [!NOTE]
> While making this, I heavily relied on
> [this post](https://privsec.dev/posts/linux/docker-and-oci-hardening/). I don't have all that
> much experience with podman in general and this repo is very much a learning project.

## Running
Clone the repo and run the `run.sh` script. It's just a simple wrapper around podman for options I
can't set in the compose file.

You can access syncthing GUI on http://localhost:8384. The container is configured to ONLY expose it
on the host, so if you want to manage syncthing from another device you'll have to edit the compose
file.
