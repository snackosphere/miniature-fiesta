#!/bin/bash
# My configuration for a fresh Ubuntu install

# Add Visual Studio Code repository and keys
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Update package lists
sudo apt-get update

# Add essential development packages
sudo apt-get install code git vim

# Configure Git identity
git config --global user.name "Taylor Chirillo"
git config --global user.email taylor.chirillo@gmail.com

# Turn on credential helper and set timeout to 1 hour
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'

# Display Git settings
git config user.name
git config user.email
