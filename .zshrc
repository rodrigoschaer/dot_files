typeset -U PATH path
export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'

# ZSH THEMES.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="half-life"

# ZSH PLUGINS
plugins=(
git 
zsh-syntax-highlighting 
zsh-autosuggestions
web-search
dirhistory
)

source $ZSH/oh-my-zsh.sh

# ALIASES
alias open="xdg-open"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
function runShell() {
    if [ -n "$1" ]
    then
        cd ~/Cora/front-ibanking-shell && npm start -- "$1"
        echo "rodando $1 localmente"
    else
        cd ~/Cora/front-ibanking-shell && npm start
        echo "rodando todos os projetos em stage"
    fi
}
function runCora() {
    if [ -n "$1" ]
    then
        clear
        cd ~/Cora/front-ibanking-"$1" && npm start
    else
        echo "ERRO: passe o nome do projeto" 
    fi
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
stty -ixon

alias vim="nvim"
alias nvimcfg="cd ~/.config/nvim/lua"
