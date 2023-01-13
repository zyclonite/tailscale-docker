ARG TS_VERSION=1.34.2

FROM registry.fedoraproject.org/fedora-minimal:37

LABEL org.opencontainers.image.title="tailscale" \
      org.opencontainers.image.version="${TS_VERSION}" \
      org.opencontainers.image.description="Tailscale as Docker Image" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.source="https://github.com/zyclonite/tailscale-docker"

RUN microdnf -y --nodocs install iproute iptables-nft tailscale-${TS_VERSION} && \
    microdnf clean all && \
    rm -rf /tmp/* /var/tmp/* /var/log/*.log /var/cache/yum/* /var/lib/dnf/* /var/lib/rpm/* /root/.gnupg

EXPOSE 3478/udp 41641/udp

ENTRYPOINT ["/usr/sbin/tailscaled"]
