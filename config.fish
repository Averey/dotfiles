if status is-interactive
    # Commands to run in interactive sessions can go here
end

# https://github.com/3axap4eHko/prmt
function fish_prompt
    # prmt --code $status '{path:cyan} {git:purple} {ok:green}{fail:red} '
    #
    prmt '➜ {path:cyan}{git:purple.bold:: :}{ok:green:✓}{fail:red:✗} ❯ '
end

# 插件安装
# fisher install PatrickF1/fzf.fish  # 或其他 fish 插件管理器
# fisher install catppuccin/fish
# fish_config theme save "Catppuccin Mocha"
# fisher install jorgebucaran/hydro

bind ctrl-l ''

set -gx TERM xterm-256color

abbr --add proxy https_proxy=http://127.0.0.1:9001
abbr --add gco git checkout

#------------- alias -----------------
alias ll='ls -la'
alias clr='clear'
alias vi='nvim'
alias vim='nvim'
alias vf='nvim $(fzf)'
alias ii='open' # powershell invoke-item
# git
alias gs='git status'
alias ga='git add *'
alias gp='git push'
alias gl='git pull'
function gc # bash alias gc='git commit -m"$1"'
    git commit -m "$argv[1]"
end
alias gcm='git commit --amend'
alias glt='git log --tree'
alias glf='git log --oneline | fzf'
alias glp='git pull | git push'
alias glgg='git log --graph --decorate --all'
# tmux
alias ta='tmux -2 a'
alias ts='tmux new-session -s'
# eza
alias ls='eza --icons=auto'
alias la='eza -a --icons=auto'
alias ll='eza -l -a --icons=auto'

#---- simple functions --------
function ip
    set iplocal (ipconfig getifaddr en0)
    set ipNet (dig +short myip.opendns.com @resolver1.opendns.com)

    echo "local: $iplocal"
    echo "remote: $ipNet"

    # 把远程 IP 粘贴到剪贴板
    echo -n $ipNet | pbcopy
    echo "remote ip 已复制到剪贴板"
end

# 设置 PATH
set -U fish_user_paths (go env GOPATH)/bin $fish_user_paths
set -Ux fish_user_paths ~/development/flutter/bin $fish_user_paths
set -Ux fish_user_paths ~/.cargo/bin $fish_user_paths
set -Ux fish_user_paths ~/.local/bin $fish_user_paths

# 设置 fzf 默认使用 fd 搜索
set -Ux FZF_DEFAULT_COMMAND 'fd --type f'

zoxide init fish | source
