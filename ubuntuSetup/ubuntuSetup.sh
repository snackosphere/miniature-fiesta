#!/bin/bash
# My configuration for a fresh Ubuntu install

# Shrink the dock icons
dconf write /org/gnome/shell/extensions/dash-to-dock/dash-max-icon-size 16

# Update package lists
sudo apt-get update

# Add essential development packages
sudo apt-get install apt-transport-https curl git vim

# Add Visual Studio Code repository and keys
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Install Visual Studio Code
sudo apt-get install Code

# Add the Google Linux signing key and Dart apt repository
sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'

# Install Dart
sudo apt-get install dart

# Add Dart to path
echo "export PATH /usr/lib/dart/bin:$PATH"

# Configure Git identity
git config --global user.name "Taylor Chirillo"
git config --global user.email taylor.chirillo@gmail.com

# Turn on credential helper and set timeout to 1 hour
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'

# Display Git settings
git config user.name
git config user.email
