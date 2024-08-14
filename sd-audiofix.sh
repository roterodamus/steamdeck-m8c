#!/bin/bash

#Thanks to Piorn on Steamcommunity

# Disable SteamOS readonly mode
sudo steamos-readonly disable

# Backup the filter-chain-sink.conf file
sudo mv /usr/share/pipewire/pipewire.conf.d/filter-chain-sink.conf /usr/share/pipewire/pipewire.conf.d/filter-chain-sink.conf.bak

# Backup the virtual-sink.conf file
sudo mv /usr/share/pipewire/pipewire.conf.d/virtual-sink.conf /usr/share/pipewire/pipewire.conf.d/virtual-sink.conf.bak

# Enable SteamOS readonly mode
sudo steamos-readonly enable

echo "Configuration files have been backed up and SteamOS readonly mode has been restored."
