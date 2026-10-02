# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

FROM ubuntu:24.04@sha256:a853f94d226358a79c740cfc7bce0c289748f3fe3488d921d038ccd752c61b60
COPY trusted.gpg.d/ubuntu-cloud-keyring.gpg /etc/apt/trusted.gpg.d/ubuntu-cloud-keyring.gpg
COPY <<EOF /etc/apt/sources.list.d/cloudarchive.list
deb http://ubuntu-cloud.archive.canonical.com/ubuntu noble-updates/flamingo main
EOF
