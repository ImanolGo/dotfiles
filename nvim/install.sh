#!/bin/sh

# Define the directory where the script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Neovim configuration directory
NVIM_CONFIG_DIR="$HOME/.config/nvim"

# Create directories if they don't exist
mkdir -p $NVIM_CONFIG_DIR/autoload $NVIM_CONFIG_DIR/plugged

# Install vim-plug plugin manager for Neovim
if [ ! -f "$NVIM_CONFIG_DIR/autoload/plug.vim" ]; then
  curl -fLo "$NVIM_CONFIG_DIR/autoload/plug.vim" --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Symlink the init.vim and coc-settings.json
ln -sfn $DIR/init.vim $NVIM_CONFIG_DIR/init.vim
ln -sfn $DIR/coc-settings.json $NVIM_CONFIG_DIR/coc-settings.json

# Install plugins using vim-plug
nvim +PlugInstall +qall

# Install CoC extensions
nvim +CocInstall coc-rls coc-clangd coc-pyright coc-tsserver +qall

echo "Neovim configuration is complete. You may need to restart Neovim for all changes to take effect."
