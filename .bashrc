############################################################
# ADDED BY MIG
############################################################

###### PYTHON VIRTUAL ENVIRONMENTS

# how to do the bellow in an auto way?
# export PATH=~/Library/Python/3.7/bin:$PATH
export WORKON_HOME=~/.virtualenvs
function workon() {
    source $WORKON_HOME/$1/bin/activate;
}
function mkvenv() {
    python3 -m venv $WORKON_HOME/$1
}
function lsvenv() {
    ls $WORKON_HOME
}
function rmvenv() {
    rm -r $WORKON_HOME/$1
}

####### DEFAULT VIRTUAL ENVIRONMENT
workon mig-venv

####### VSCODE
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
