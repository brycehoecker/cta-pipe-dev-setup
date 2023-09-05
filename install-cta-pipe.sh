#!/bin/bash

# Check if the script is run as root
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root (use sudo)" 
  exit 1
fi

# Update package list
dnf -y update

# Install Git and Python3
dnf -y install git python3 python3-pip

# Clone the ctapipe repository
git clone https://github.com/cta-observatory/ctapipe.git

# Navigate into the cloned directory
cd ctapipe

# Install ctapipe using pip
pip3 install .

# Installation complete
echo "Installation of ctapipe is complete."

exit 0
