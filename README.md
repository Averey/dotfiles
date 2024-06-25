## Install

Clone onto your laptop:
```sh
git clone https://github.com/Averey/dotfiles.git ~/dotfiles
cd ~/dotfiles
git checkout master
```

### Font
[FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads)

### MAC
#### Install Tools
```sh
# eza
brew install eza

#git
brew install git
```

#### Install Neovim
```sh
brew install neovim
ln -s ~/dotfiles/nvim ~/.config/nvim
```

#### Install Alacritty
```sh
brew install alacritty
ln -s ~/dotfiles/alacritty ~/.config/alacritty
```

#### Install Tmux
```sh
brew install tmux
ln -s ~/dotfiles/tmux ~/.config/tmux
```

