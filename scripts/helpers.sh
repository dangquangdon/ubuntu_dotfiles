#!/bin/bash

# ========== CONFIGURATION ==========
PROGRAM_NAME="Don-Ubuntu-24-04"
LOG_FILE="/var/log/install-${PROGRAM_NAME}.log"

log() {
    echo "$(date +'%Y-%m-%d %H:%M:%S') $1" | tee -a "$LOG_FILE"
}

check_sudo() {
    if [[ $EUID -ne 0 ]]; then
        log "Please run this script as root or with sudo."
        exit 1
    fi
}

update_package_list() {
    log "Updating package list..."
    sudo apt update -y
}
