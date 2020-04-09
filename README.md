# Onyx Docker

[![Build Status](https://travis-ci.org/OnyxAi/onyx-docker.svg?branch=master)](https://travis-ci.org/OnyxAi/onyx-docker)

## Install
### Get image from Docker hub
This repo is on [dockerhub](https://hub.docker.com/r/onyxai/onyx/) , you can simply launch that command to get the container.

```bash
docker pull onyxai/onyx
```

### Build image
Git pull this repository.

```bash
git clone https://github.com/OnyxAi/onyx-docker.git
```

Build the docker image.

```bash
docker build -t onyx .
```

## Run

Run the following to start up onyx:

```bash
docker run -dit -p 8080:8080 --name onyx onyxai/onyx
```

Confirm via docker ps that your container is up and serving port 8080:

```bash
docker ps
```

If you have an instance with onyx running in 8080 port, it's good !

## Logs
To watch onyx log, you can :

```bash
docker logs -f onyx
```

You can exit out of this docker log command by hitting ctrl + c

## CLI Access
You can interact with the CLI of the container by running the following command, this will connect you to the running container via bash:

```bash
docker exec -it onyx /bin/bash
```

You can hit ctrl + c to exit the cli.
