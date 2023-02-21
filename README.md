# git_runner_image
---
[![Docker Image CI](https://github.com/cabbagec2hlbGwK/git_runner_image/actions/workflows/docker-image.yml/badge.svg)](https://github.com/cabbagec2hlbGwK/git_runner_image/actions/workflows/docker-image.yml)
# Action runner

This Dockerfile builds a self-hosted runner for GitHub Actions using an Ubuntu base image.

## Prerequisites

- Docker

## Building the Image

To build the image, navigate to the directory containing the Dockerfile and run the following command:

```
docker build -t <image-name> .

```

Replace <image-name> with the desired name for the image.

## Usage

To run the self-hosted runner container, use the following command:

```
docker run -e GIT_URL=<repository-url> -e GIT_TOKEN=<repository-token> <image-name>

```

Replace <repository-url> and <repository-token> with the URL and token for the GitHub repository where you want to use the runner. Replace <image-name> with the name of the image you built in the previous step.

This will configure and start the runner inside the container.

The self-hosted runner will be able to trigger automated processes and jobs when certain events occur in the repository, such as a push to the master branch. It will also be able to run scheduled tasks, such as nightly builds.

The self-hosted runner can be configured to run jobs in parallel, allowing multiple jobs to be executed at the same time. This can help speed up the overall process of running automated processes and jobs.

The self-hosted runner can also be configured to run jobs in a specific environment, such as a specific version of Node.js or a specific version of the operating system. This can help ensure that the automated processes and jobs run in the same environment as the codebase.
