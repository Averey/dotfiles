#!/usr/bin/env bash

# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

# Make neovim the default editor.
export EDITOR='nvim';


# nvm, node version manage
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export VISUAL=nvim  # Use neovim as 'preferred editor'
# export VIMCONFIG=~/.config/nvim
# export VIMDATA=~/.local/share/nvim

