FROM ghcr.io/vexxhost/ubuntu:edge@sha256:5569d9acb4dadc1e88e9c83efc44c131a648894ec3d3335e85e3ae526861e1bd
COPY trusted.gpg.d/ubuntu-cloud-keyring.gpg /etc/apt/trusted.gpg.d/ubuntu-cloud-keyring.gpg
ARG RELEASE
COPY <<EOF /etc/apt/sources.list.d/cloudarchive.list
deb http://ubuntu-cloud.archive.canonical.com/ubuntu jammy-updates/${RELEASE} main
EOF
