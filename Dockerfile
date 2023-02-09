FROM tailscale/tailscale:v1.36.1

RUN cd /sbin && \
    rm iptables iptables-save iptables-restore ip6tables ip6tables-save ip6tables-restore && \
    ln -s xtables-nft-multi iptables && \
    ln -s xtables-nft-multi iptables-save && \
    ln -s xtables-nft-multi iptables-restore && \
    ln -s xtables-nft-multi ip6tables && \
    ln -s xtables-nft-multi ip6tables-save && \
    ln -s xtables-nft-multi ip6tables-restore
