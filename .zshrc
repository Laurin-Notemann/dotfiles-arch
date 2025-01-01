HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=100000
SAVEHIST=10000
setopt autocd

. ~/.config/zsh/.zsh_comp_settings
. ~/.config/zsh/.arrow_up_down
. ~/.config/zsh/.alias
. ~/.config/zsh/.lazy-load-nvm-node-npm
. ~/.config/zsh/.prompt

# Enable ls colors
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

