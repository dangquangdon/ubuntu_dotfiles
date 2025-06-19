#!/bin/bash

source ./helpers.sh


install_regolith_desktop() {
    # https://regolith-desktop.com/docs/using-regolith/install/

    log "Installing Regolith Desktop (Wayland)..."

    wget -qO - https://archive.regolith-desktop.com/regolith.key | \
        gpg --dearmor | sudo tee /usr/share/keyrings/regolith-archive-keyring.gpg > /dev/null
    
    echo deb "[arch=amd64 signed-by=/usr/share/keyrings/regolith-archive-keyring.gpg] \
        https://archive.regolith-desktop.com/ubuntu/stable noble v3.3" | \
        sudo tee /etc/apt/sources.list.d/regolith.list
    
    sudo apt update -y
    sudo apt install -y regolith-desktop regolith-session-sway regolith-look-lascaille dunst libnotify-bin
}