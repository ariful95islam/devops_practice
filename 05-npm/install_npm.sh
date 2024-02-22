#!/bin/bash

## Install nodejs and npm

# Update the package lists for upgrades and new packages
sudo apt-get update

# Install nodejs and npm
sudo apt-get install nodejs npm

# Check to see if npm and node are installed
npm -v
node -v

