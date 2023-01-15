[![Docker Pulls](https://badgen.net/docker/pulls/zyclonite/tailscale)](https://hub.docker.com/r/zyclonite/tailscale)
[![Quay.io Enabled](https://badgen.net/badge/quay%20pulls/enabled/green)](https://quay.io/repository/zyclonite/tailscale)
[![build](https://github.com/zyclonite/tailscale-docker/actions/workflows/build.yml/badge.svg)](https://github.com/zyclonite/tailscale-docker/actions/workflows/build.yml)

## tailscale-docker

#### Description

Tailscale as Docker Image.  
Using nftables by default

#### Run

most simple way of running the container

    docker run -d --name=tailscale -v /var/lib/tailscale:/var/lib/tailscale -v /dev/net/tun:/dev/net/tun --network=host --cap-add=NET_ADMIN --cap-add=NET_RAW zyclonite/tailscale

#### Source

https://github.com/zyclonite/tailscale-docker
