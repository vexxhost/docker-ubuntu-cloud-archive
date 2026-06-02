# SPDX-FileCopyrightText: © 2025 VEXXHOST, Inc.
# SPDX-License-Identifier: GPL-3.0-or-later

FROM ubuntu:24.04@sha256:db6914f1ac0c566f57857641e2214e3f3e453cb340cc2c890ed6c2b7b81b8a00
COPY trusted.gpg.d/ubuntu-cloud-keyring.gpg /etc/apt/trusted.gpg.d/ubuntu-cloud-keyring.gpg
COPY <<EOF /etc/apt/sources.list.d/cloudarchive.list
deb http://ubuntu-cloud.archive.canonical.com/ubuntu noble-updates/dalmatian main
EOF
