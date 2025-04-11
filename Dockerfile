FROM ghcr.io/vexxhost/ubuntu:edge@sha256:42ad7fa6cc255d5c4212d49f9d3193a6448ce8acfe0937738b5753a2c8159a7a
COPY trusted.gpg.d/ubuntu-cloud-keyring.gpg /etc/apt/trusted.gpg.d/ubuntu-cloud-keyring.gpg
ARG RELEASE
COPY <<EOF /etc/apt/sources.list.d/cloudarchive.list
deb http://ubuntu-cloud.archive.canonical.com/ubuntu jammy-updates/${RELEASE} main
EOF
