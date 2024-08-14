#!/bin/bash


# Disable SteamOS readonly mode
sudo steamos-readonly disable

# Add user deck to serial group
sudo usermod -a -G uucp $USER

# Initialize repo keys and populate repos
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --populate holo

# Download and install libserialport
sudo pacman -Syy libserialport

# Enable SteamOS readonly mode
sudo steamos-readonly enable

echo "libserialport installed and SteamOS readonly mode has been restored."
