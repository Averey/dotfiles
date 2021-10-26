let mapleader=" "
let CONFIG_FILE = '~/dotfiles/nvim/'
let configFile = ['basic.vim', 'plugin.vim']
for config in configFile
    exec 'source ' . CONFIG_FILE . config
endfor