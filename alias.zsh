# global
alias clr=clear
#alias nvim="~/nvim-osx64/bin/nvim"
alias vi="nvim"
alias vim="nvim"

alias hosts="sudo vim /etc/hosts"
alias zshconfig="vim ~/.zshrc"
alias path='echo $PATH | tr -s ":" "\n"'
alias dotfiles="cd ~/dotfiles && $EDITOR"

# cd
alias ..="cd .."
alias ...="cd ../.."
# eza
alias ls="eza --icons=auto"
alias lsa="eza -a --icons=auto"
alias ll="eza -l -a --icons=auto"
alias la="eza -l -a --icons=auto"


# tmux
alias ta="tmux -2 a"
alias ts="tmux new-session -s"

# git 
alias gs="git status"
alias ga="git add *"
alias gl="git pull"
alias gp="git push"
alias glp="git pull | git push"
alias gc='git commit -m"$1"'
alias gcm='git commit --amend'
alias gt="git log --tree"


