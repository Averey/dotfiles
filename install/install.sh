#!/bin/bash

function install(){
	echo "Installing $1 ..."
	echo "__________________________________________________________________"
}
function exists() {
	if ! command -v $1 &> /dev/null
       	then
		return 1
	else
		return 0
	fi
}

function isMac() {
	if [[ "$(uname)" == "Mac" ]]; then
		return 0
	else
		return 1
	fi
}

# Install fish shell
if ! exists fish; then
	install "fish"
	if ! isMac; then
		sudo apt-add-repository ppa:fish-shell/release-3
		sudo apt update
		sudo apt install fish
	else
		brew install fish
	fi

	echo "Set fish shell as default Shell..."
	echo /usr/local/bin/fish | sudo tee -a /etc/shells
	chsh -s /usr/bin/fish

	install "startship"
	curl -sS https://starship.rs/install.sh | sh
	echo "starship init fish | source" >> ~/.config/fish/config.fish

fi

# Install neovim
if ! exists nvim; then
	install "neovim"
	if ! isMac; then
		curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
		sudo rm -rf /opt/nvim
		sudo tar -C /opt -xzf nvim-linux64.tar.gz
		
		echo "PATH=\"$PATH:/opt/nvim-linux64/bin\"" >> ~/.bashrc
	else
		brew install neovim
	fi
fi


# Install eza 
if ! exists eza; then
	install "eza"
	if ! isMac; then
		sudo apt update
		sudo apt install -y gpg

		sudo mkdir -p /etc/apt/keyrings
		wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
		echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
		sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
		sudo apt update
		sudo apt install -y eza

	else
		brew install eza
	fi
fi

ln -s ~/dotfiles/nvim ~/.config/nvim
#ln -sf ~/dotfiles/init.zsh ~/.zshrc
# ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf
