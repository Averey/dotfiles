#!/bin/sh

NAME="nvim-macos.tar.gz"
if [[ -z $(find . -name $NAME) ]]; then
  URL="https://github.com/neovim/neovim/releases/download/v0.5.1/nvim-macos.tar.gz"
  curl -LO $URL
fi
tar xzf nvim-macos.tar.gz --directory ~
