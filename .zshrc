############################################################
# ADDED BY MIG
############################################################

###### PYTHON VIRTUAL ENVIRONMENTS

# export PATH=~/Library/Python/3.7/bin:$PATH
export WORKON_HOME=~/.virtualenvs
function workon() {
    source $WORKON_HOME/$1/bin/activate;
}
function mkvenv() {
    python3.7 -m venv $WORKON_HOME/$1
}
function lsvenv() {
    ls $WORKON_HOME
}
function rmvenv() {
    rm -r $WORKON_HOME/$1
}
function mkvenvp() {
    mkvenv $1 && workon $1 && pip install -U pip
}
function mkvenvr() {
    mkvenvp $1 && pip install -r requirements.txt
}

####### DEFAULT VIRTUAL ENVIRONMENT
workon mig-venv
export PATH=$PATH:$HOME/bin

####### GIT
git config --global pager.branch false

############################################################
# ADDED BY MIG - https://github.com/nibalizer/bash-tricks/blob/master/bash_tricks.sh
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

# Short things are better (vscode)
alias cn='code ~/ws/notes'

# Just fun
alias fucking=sudo
