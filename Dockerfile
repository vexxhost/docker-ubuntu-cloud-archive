FROM ghcr.io/vexxhost/ubuntu:edge@sha256:f4eb35289a819d404c758d9423db6fbc8e8912110957815fd70c8e71e0cd0ad1
COPY trusted.gpg.d/ubuntu-cloud-keyring.gpg /etc/apt/trusted.gpg.d/ubuntu-cloud-keyring.gpg
ARG RELEASE
COPY <<EOF /etc/apt/sources.list.d/cloudarchive.list
deb http://ubuntu-cloud.archive.canonical.com/ubuntu jammy-updates/${RELEASE} main
EOF
