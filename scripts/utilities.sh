#!/bin/bash
source ./helpers.sh


_install_bat() {
    log "Installing bat..."
    sudo apt install -y bat
}

_install_eza() {
    log "Installing eza..."
    sudo apt install -y eza
}

_install_gpg() {
    log "Installing GPG..."
    sudo apt install -y gpg
}

_install_pyenv() {
    log "Installing Pyenv..."
    curl -fsSL https://pyenv.run | bash
}

install_utilities() {
    _install_bat
    _install_eza
    _install_gpg
    _install_pyenv
}