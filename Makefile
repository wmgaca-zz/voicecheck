DEFAULT_DOCKER_IMAGE_NAME=wmgaca/voicecheck
DEFAULT_DOCKER_IMAGE_VERSION=0.0.1
SHELL=/bin/bash
GIT_BRANCH = $(shell git symbolic-ref HEAD 2>/dev/null)

.PHONY: docker

docker:
    git archive --format tar.gz --output docker/archive.tar.gz $(GIT_BRANCH)
    docker build -t $${IMAGE_NAME:-$(DEFAULT_DOCKER_IMAGE_NAME)}:$${IMAGE_VERSION:-$(DEFAULT_DOCKER_IMAGE_VERSION)} docker
