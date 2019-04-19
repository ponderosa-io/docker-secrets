# Docker builds with `--secret`

This repo contains two Dockerfiles used to demonstrate the new `--secret` flag available in the `docker build` command (docs [here](https://docs.docker.com/develop/develop-images/build_enhancements/)).

Run `make build-without-buildkit` to run a Docker build against `Dockerfile`.

Run `make dockerfile-buildkit` to run a Docker build against `Dockerfile-buildkit` that supplies a secret.

Warning: you should not `cat` out a sensitive value in your Dockerfile; this repo just does it for demonstration purposes!