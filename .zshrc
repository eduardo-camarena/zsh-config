alias reload="source ~/.zshrc"
alias config="nvim ~/.zshrc"
alias nvim="~/nvim.appimage"
alias update="sudo apt update && sudo apt upgrade -y"

nvim_config() {
  export CURRENT_DIR=$(pwd);
  cd ~/.config/nvim;
  nvim;
  cd $CURRENT_DIR;
  unset CURRENT_DIR;
}

eval "$(starship init zsh)"
