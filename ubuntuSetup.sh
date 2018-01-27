#!/bin/bash
# My configuration for a fresh Ubuntu install

# Update package lists
sudo apt-get update

# Add essential development packages
sudo apt-get install vim git 

# Configure Git identity
git config --global user.name "Taylor Chirillo"
git config --global user.email taylor.chirillo@gmail.com

# Turn on credential helper and set timeout to 1 hour
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'

# Display Git settings
git config user.name
git config user.email
