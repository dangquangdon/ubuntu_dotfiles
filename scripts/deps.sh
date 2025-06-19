#!/bin/bash

install_dependencies() {
    source ./helpers.sh

    log "Installing dependencies..."
    sudo apt install -y curl \
                        wget \
                        gnupg \
                        lsb-release \
                        ca-certificates \
                        make \
                        build-essential \
                        libssl-dev \
                        zlib1g-dev \
                        libbz2-dev \
                        libreadline-dev \
                        libsqlite3-dev \
                        wget \
                        curl \
                        llvm \
                        libncurses-dev \
                        xz-utils \
                        tk-dev \
                        libffi-dev \
                        liblzma-dev \
                        snapd
}