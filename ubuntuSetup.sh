#!/bin/bash
# My configuration for a fresh Ubuntu install

# Update package lists
sudo apt-get update

# Add essential development packages
sudo apt-get install vim git 

# Configure Git
git config --global user.name "Taylor Chirillo"
git config --global user.email taylor.chirillo@gmail.com

