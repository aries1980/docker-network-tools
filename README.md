# Network Tools Docker image

Docker image with network tools for debugging e.g. Kubernetes connectivity issues.

## Problem Statement

Good container images tend to be minimal, so if you need to debug networking
problems between pods, you need tools like `tcpdump`, `dig`, `ping` and friends.

## Usage

* `docker run -it aries1980/network-tools:latest dig janosfeher.com`
* [Kubernetes deployment to two separate nodes](https://github.com/aries1980/docker-network-tools/blob/main/examples/k8s-with-nodeselector.yaml)

## Testing

Use it with confidence. Scanned with Acquasec Trivy and Anchore Grype before
pushing it to Docker Hub.

## Links

* [aries1980/network-tools on Docker Hub](https://hub.docker.com/r/aries1980/network-tools)
* [Dockerfile](https://github.com/aries1980/docker-network-tools/blob/main/Dockerfile)
* [Build pipeline](https://github.com/aries1980/docker-network-tools/tree/main/.github/workflows)

