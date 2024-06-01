autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
bindkey ";5C" forward-word
bindkey ";5D" backward-word
HISTFILE=~/.zsh_history

alias config="nvim ~/.zshrc"
alias reload="source ~/.zshrc"
alias nvim="~/nvim.appimage"
alias update="sudo apt update && sudo apt upgrade -y"

nvim_config() {
  export CURRENT_DIR=$(pwd);
  cd ~/.config/nvim;
  nvim;
  cd $CURRENT_DIR;
  unset CURRENT_DIR;
}

HISTSIZE=10000
SAVEHIST=10000

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"
