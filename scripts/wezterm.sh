#!/bin/bash

source ./helpers.sh

install_wezterm() {
    log "Installing WezTerm..."

    curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg

    echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list

    chmod 644 /usr/share/keyrings/wezterm-fury.gpg

    sudo apt update -y
    sudo apt install -y wezterm
}