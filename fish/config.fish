# Set Fish as the default shell
if status is-login
  set -U fish_greeting
end

# Set universal variables
set -U EDITOR nano

# Basic Fish Shell aliases
alias ll='ls -lh'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'

# Git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'
alias gp='git push'
alias gpl='git pull'
alias gl='git log'

# Neovim aliases
#alias vi="nvim"
#alias vim="nvim"
#alias view="nvim -R"
#alias vimdiff="nvim -d"


# Set the color scheme
set -U fish_color_normal white
set -U fish_color_command green
set -U fish_color_quote yellow

# Initialize Tide
# if type -q tide
#     tide configure
# end

# ... More configuration as needed

# Libtorch paths
set -x PATH /usr/local/libtorch/bin $PATH
set -x LD_LIBRARY_PATH /usr/local/libtorch/lib $LD_LIBRARY_PATH

# Add Cargo
set -gx PATH $HOME/.cargo/bin $PATH

