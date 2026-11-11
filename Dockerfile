FROM caddy:builder AS builder
RUN xcaddy build \
    --with github.com/mholt/caddy-webdav \
    --with github.com/lucaslorentz/caddy-docker-proxy/v2

FROM caddy:latest
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
