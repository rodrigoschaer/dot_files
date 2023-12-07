export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="half-life"


plugins=(
	git 
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

alias npi="npm install --legacy-peer-deps"
alias npci="npm ci --legacy-peer-deps"
alias python="python3"
alias vim="nvim"
alias dup="docker-compose -f docker-compose.yml up"
alias workflow="~/workflow.sh"
alias vimcfg="vim ~/.config/nvim"
alias applyVimCfg="cp ~/.config/nvim ~/Personal/dot_files/nvim"
alias sozsh="source ~/.zshrc"

alias buildcpp="g++ -std=c++20 -o";

function apply_vim() {
    cp -R ~/.config/nvim ~/Personal/dot_files/nvim;

    cd ~/Personal/dot_files;
    env -i;
    gaa -A
    gc -m "$1"
    ggpush
    echo "Commited \"$1\" to dot_files repository";
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

stty -ixon

[ -s ~/.luaver/luaver ] && . ~/.luaver/luaver

export PATH="/usr/local/bin:$PATH"
