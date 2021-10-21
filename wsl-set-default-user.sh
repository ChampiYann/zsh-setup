#!/usr/bin/env bash
# This script sets the cuirrent user as default user when starting a new wsl shell.
if [[ "$EUID" -ne 0 ]]; then
    echo "Current user is: $USER"
    ## Update wsl.conf with default user
    echo "Writing wsl.conf..."
    echo "[user]" | tee -a /etc/wsl.conf
    echo "default=$SUER" | tee -a /etc/wsl.conf
fi
