# FROM container-registry.oracle.com/os/oraclelinux:9-slim
FROM ghcr.io/oracle/oraclelinux:9-slim
# FROM debian:stable-slim AS build
# FROM gcr.io/distroless/base-debian11

EXPOSE 8080

COPY target/actions-demo app

ENTRYPOINT ["/app"]

# Build and run:
# podman build -t localhost/actions-demo:native .
# podman run --rm -p 8080:8080 localhost/actions-demo:native