export PATH=$HOME/bin:$HOME/.local/bin:$HOME/scripts:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Define your plugins
plugins=(git)
source $ZSH/oh-my-zsh.sh

# if [[ ! -f ~/.zpm/zpm.zsh ]]; then
#   git clone https://github.com/zpm-zsh/zpm ~/.zpm
# fi
# source ~/.zpm/zpm.zsh
#
# #zpm load sindresorhus/pure
# zpm load zsh-users/zsh-autosuggestions
# zpm load zsh-users/zsh-syntax-highlighting

# Download Znap, if it's not there yet.
[[ -r ~/.znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/.znap/
source ~/.znap/znap.zsh  # Start Znap

znap prompt sindresorhus/pure
znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting

eval "$(fzf --zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/risi/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

export EDITOR='nvim'
alias pn="pnpm"
alias ngr3="ngrok http 3000"
alias shad='pnpm dlx shadcn'

alias ncu="pnpm dlx npm-check-updates"
