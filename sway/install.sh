#!/bin/sh

# Get the directory where the script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create the ~/.config/sway directory if it doesn't exist
mkdir -p ~/.config/sway

# Create a symbolic link for the Sway configuration
ln -sfn $DIR/config ~/.config/sway/config

echo "Sway configuration complete."
