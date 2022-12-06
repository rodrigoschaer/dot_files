# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

typeset -U PATH path
export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="half-life"

# Which plugins would you like to load?
plugins=(
git 
zsh-syntax-highlighting 
zsh-autosuggestions
web-search
dirhistory
)

source $ZSH/oh-my-zsh.sh

# Example aliases
alias open="xdg-open"
alias zshconfig="xdg-open ~/.zshrc"
alias ohmyzsh="xdg-open ~/.oh-my-zsh"
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
