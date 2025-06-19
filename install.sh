#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Checking and importing scripts from ./scripts directory..."
shopt -s nullglob
for file in ./scripts/*.sh; do
    echo "sourcing $file"
    source "$file"
done
shopt -u nullglob

install_programs() {
    log "Installing ${PROGRAM_NAME}..."

    install_dependencies
    install_utilities
    install_regolith_desktop

    log "${PROGRAM_NAME} installation complete."
}


# ========== MAIN EXECUTION ==========

check_sudo
update_package_list
install_programs
