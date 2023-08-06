#!/bin/sh

# Get the directory where the script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create the ~/.config/kitty directory if it doesn't exist
mkdir -p ~/.config/kitty

# Create a symbolic link for the Kitty configuration
ln -sfn $DIR/kitty.conf ~/.config/kitty/kitty.conf

echo "Kitty configuration complete."

