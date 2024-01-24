#!/usr/bin/env fish

# Get the directory where the script is located
set DIR (cd (dirname (status filename)) && pwd)

# Create the ~/.config/fish directory if it doesn't exist
mkdir -p ~/.config/fish

# Create a symbolic link for the Fish configuration
ln -sfn $DIR/config.fish ~/.config/fish/config.fish

# Install Fisher (package manager for Fish)
curl -sL https://git.io/fisher > ~/.config/fish/functions/fisher.fish
source ~/.config/fish/functions/fisher.fish; and fisher install jorgebucaran/fisher

# Install Tide using Fisher
fisher install IlanCosman/tide

# Install bang-bang using Fisher
fisher install oh-my-fish/plugin-bang-bang

echo "Fish configuration complete."
