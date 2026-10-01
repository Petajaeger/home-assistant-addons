FROM alpine:3.23

LABEL io.hass.version="0.1.4" io.hass.type="app" io.hass.arch="aarch64"

RUN apk add --no-cache ca-certificates icu-libs libgcc libstdc++ curl

# Download the versioned self-contained musl/ARM64 binary and verify its checksum.
RUN curl --fail --location --retry 3 --proto '=https' --proto-redir '=https' \
    "https://github.com/Petajaeger/home-assistant-addons/releases/download/offwego-0.1.4/Offwego.LinuxHelper-linux-musl-arm64-0.1.4.gz" \
    --output /tmp/offwego.gz \
    && echo "d1079cab442b1e772bca2fec4c10d06b6bd4d15c2cebc17bc922e58aa1805a4f  /tmp/offwego.gz" | sha256sum -c - \
    && mkdir -p /usr/local/lib/offwego \
    && gzip -dc /tmp/offwego.gz > /usr/local/lib/offwego/Offwego.LinuxHelper \
    && chmod 755 /usr/local/lib/offwego/Offwego.LinuxHelper \
    && rm /tmp/offwego.gz

COPY run.sh /run.sh
RUN chmod 755 /run.sh && mkdir -p /var/lib/offwego
CMD ["/run.sh"]
