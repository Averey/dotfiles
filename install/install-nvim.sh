#!/bin/sh

# export in .env file
XDG_CONFIG_HOME="$HOME/.config"
NAME="nvim-macos.tar.gz"
if [[ -z $(find . -name $NAME) ]]; then
  URL="https://github.com/neovim/neovim/releases/download/v0.5.1/nvim-macos.tar.gz"
  curl -LO $URL
fi
#tar xzf nvim-macos.tar.gz --directory ~


#install vim-plug
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# nvim config
mkdir -p ~/.config/nvim/autoload
ln -sf ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
