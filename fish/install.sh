#!/bin/sh

# Get the directory where the script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create the ~/.config/fish directory if it doesn't exist
mkdir -p ~/.config/fish

# Create a symbolic link for the Fish configuration
ln -sfn $DIR/config.fish ~/.config/fish/config.fish

# Install Fisher (package manager for Fish)
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# Install Tide using Fisher
fish -c "fisher install IlanCosman/tide"

echo "Fish configuration complete."
