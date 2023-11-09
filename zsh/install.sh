#!/bin/sh

# Define the directory where the script is located.
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install Oh My Zsh (without changing the shell automatically)
RUNZSH=no KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Wait for Oh My Zsh to install
sleep 1

# Install Zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/lukechilds/zsh-nvm ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-nvm

# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# If a .zshrc file exists, back it up.
[ -f ~/.zshrc ] && mv ~/.zshrc ~/.zshrc.backup

# Create a symbolic link for the .zshrc configuration
ln -sfn $DIR/zshrc ~/.zshrc

# Source the .zshrc to apply changes (optional here because it will happen when you open a new shell)
# source ~/.zshrc

echo "Zsh configuration complete."
