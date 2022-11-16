FROM container-registry.oracle.com/os/oraclelinux:9-slim
# FROM docker.io/library/ubuntu:latest

WORKDIR downloads
RUN ls -lh

EXPOSE 8080

COPY downloads/actions-demo app
ENTRYPOINT ["/app"]

# Build and run:
# podman build -t localhost/actions-demo:native .
# podman run --rm -p 8080:8080 localhost/actions-demo:native