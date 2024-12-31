HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd

PS1='%B%F{white}%1~%f%b '

. ~/.config/zsh/.zsh_comp_settings
. ~/.config/zsh/.arrow_up_down
. ~/.config/zsh/.alias

source /usr/share/nvm/init-nvm.sh

[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec
