############################################################
# ADDED BY MIG
############################################################

plugins=(git docker zsh-autosuggestions zsh-syntax-highlighting)

# tfenv
export PATH="$HOME/.tfenv/bin:$PATH"

# set oracle home at the end of the file
export ORACLE_HOME=/opt/oracle/instantclient_12_2
export LD_LIBRARY_PATH=$ORACLE_HOME:$LD_LIBRARY_PATH
export PATH=$ORACLE_HOME:$PATH

###### BEGIN PYTHON VIRTUAL ENVIRONMENTS

export WORKON_HOME=~/.virtualenvs
function workon() {
    source $WORKON_HOME/$1/bin/activate;
}

function mkvenv() {
    python3.7 -m venv $WORKON_HOME/$1
}
function mkvenvp() {
    mkvenv $1 && workon $1 && pip install -U pip
}
function mkvenvr() {
    mkvenvp $1 && pip install -r requirements.txt
}

function mkvenv38() {
    python3.8 -m venv $WORKON_HOME/$1
}
function mkvenvp38() {
    mkvenv38 $1 && workon $1 && pip install -U pip
}
function mkvenvr38() {
    mkvenvp38 $1 && pip install -r requirements.txt
}

function lsvenv() {
    ls $WORKON_HOME
}
function rmvenv() {
    rm -r $WORKON_HOME/$1
}

alias pythonv='python --version'
alias pyv='python --version'
alias pipv='pip --version'
alias wpy='which python'
alias wpip='which pip'

####### DEFAULT VIRTUAL ENVIRONMENT
workon mig-venv
export PATH=$PATH:$HOME/bin

####### pipenv
export PYTHON_BIN_PATH="$(python3 -m site --user-base)/bin"
export PATH="$PATH:$PYTHON_BIN_PATH"

###### END PYTHON VIRTUAL ENVIRONMENTS

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
alias jn='jupyter notebook'

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

# Just fun
alias fucking=sudo
