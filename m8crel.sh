#!/bin/bash

# Copy config file
mkdir -p ~/.local/share/m8c
cp config.ini ~/.local/share/m8c/

# Set the GitHub repository URL
REPO_URL="https://api.github.com/repos/laamaa/m8c/releases/latest"

# Get the download URL for the latest Linux release
DOWNLOAD_URL=$(curl -s $REPO_URL | grep "browser_download_url.*linux" | cut -d '"' -f 4)

# Check if the download URL was found
if [ -z "$DOWNLOAD_URL" ]; then
    echo "No Linux release found."
    exit 1
fi

# Download the latest Linux release
echo "Downloading latest Linux release from $DOWNLOAD_URL..."
curl -L -o m8c_latest_linux.zip "$DOWNLOAD_URL"

# Unzip the downloaded file
echo "Unzipping the downloaded file..."
unzip m8c_latest_linux.zip

# Clean up
echo "Cleaning up..."
rm m8c_latest_linux.zip

# Make m8c executable
chmod +x m8c

echo "Done!"
