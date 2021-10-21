#!/usr/bin/env bash

apt update
apt upgrade

# zsh
apt install zsh

# Python build requirements
apt install build-essential
apt install libffi-dev
apt install zlib1g-dev