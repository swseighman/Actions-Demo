FROM container-registry.oracle.com/os/oraclelinux:9-slim
# FROM docker.io/library/ubuntu:latest

EXPOSE 8080

COPY actions-demo-linux app
ENTRYPOINT ["/app"]

# Build and run:
# podman build -t localhost/actions-demo:native .
# podman run --rm -p 8080:8080 localhost/actions-demo:native