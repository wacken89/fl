FROM traefik:1.5-alpine
RUN mkdir /logs
ADD traefik.toml .
VOLUME /logs
EXPOSE 80 8080 443