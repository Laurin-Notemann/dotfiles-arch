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


# Following lines start an ssh-agent so that I am always authenticated to github
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi
