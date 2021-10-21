#!/usr/bin/env bash
# This script sets the cuirrent user as default user when starting a new wsl shell.
echo "Current user is: $USER"
$_USER = $USER
if [[ "$EUID" -ne 0 ]]; then
    ## Update wsl.conf with default user
    echo "Writing wsl.conf..."
    echo "[user]" | sudo tee -a /etc/wsl.conf
    echo "default=$_USER" | sudo tee -a /etc/wsl.conf
fi
