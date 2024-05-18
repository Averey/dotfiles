## Debug zsh startup time: time zsh -i -c exit
# zmodload zsh/zprof

# source files
Files=(
  'zshrc.zsh'
  'exports.zsh'
  'env.zsh'
  'alias.zsh'
  'functions.zsh'
)
for file in "${Files[@]}"; do
  source "${HOME}/dotfiles/${file}"
done

# pnpm
#export PNPM_HOME="/Users/zhoujinlin/Library/pnpm"
#export PATH="$PNPM_HOME:$PATH"
# pnpm end

# python
#export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# long load time
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# zprof

