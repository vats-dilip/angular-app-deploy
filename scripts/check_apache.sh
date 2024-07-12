#!/bin/bash

# Check if Apache is installed
if ! [ -x "$(command -v apache2)" ]; then
  echo "Apache2 is not installed. Installing..."
  sudo apt update
  sudo apt install -y apache2
else
  echo "Apache2 is already installed."
fi

