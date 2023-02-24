# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

############################################################
# ADDED BY MIG
############################################################

# tfenv
export PATH="$HOME/.tfenv/bin:$PATH"

###### BEGIN PYTHON VIRTUAL ENVIRONMENTS

export WORKON_HOME=~/.virtualenvs

function workon() {
    source $WORKON_HOME/$1/bin/activate;
}
function lsvenv() {
    ls $WORKON_HOME
}
function rmvenv() {
    rm -r $WORKON_HOME/$1
}

# python 3.10 venv
function mkvenv310() {
    python3.10 -m venv $WORKON_HOME/$1
}
function mkvenvp310() {
    mkvenv310 $1 && workon $1 && pip3.10 install -U pip setuptools wheel
}
function mkvenvr310() {
    mkvenvp310 $1 && pip3.10 install -r requirements.txt
}

# python 3.8 venv
function mkvenv38() {
    python3.8 -m venv $WORKON_HOME/$1
}
function mkvenvp38() {
    mkvenv38 $1 && workon $1 && pip3.8 install -U pip setuptools wheel
}
function mkvenvr38() {
    mkvenvp38 $1 && pip3.8 install -r requirements.txt
}

####### DEFAULT VIRTUAL ENVIRONMENT
workon mig-venv38
export PATH=$PATH:$HOME/bin

alias pythonv='python3 --version'
alias pyv='python3 --version'
alias pipv='pip3 --version'
alias wpy='which python3'
alias wpip='which pip3'

###### END PYTHON VIRTUAL ENVIRONMENTS

# vscode
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# psql postgres
export PATH=/Library/PostgreSQL/15/bin:$PATH
# https://stackoverflow.com/questions/11180179/postgresql-disable-more-output
echo "\\pset pager off" >> ~/.psqlrc
export PGDATA='/Library/PostgreSQL/15/data'

############################################################
# Short things are better - https://github.com/nibalizer/bash-tricks/blob/master/bash_tricks.sh
############################################################
# Aliases
#========

# I'm a bad typist

alias sl=ls
alias mdkir=mkdir
alias soruce=source
alias souce=source

# Short things are better

alias v=vagrant
alias g=git
alias d=docker
alias j='jupyter notebook'
alias hg='history | grep'
alias tf='terraform'

# Short things are better (git)
git config --global alias.c checkout
git config --global alias.b branch
git config --global alias.s status
alias gs='git status'
alias sg='git status'
alias ga='git add .'

# Short things are better (kubernetes)
alias k='kubectl'

# Short things are better (vscode)
alias cn='code ~/ws/notes'

# Short things are better (django)
alias pm='python manage.py'

# Just fun
alias fucking=sudo

# openssl
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
