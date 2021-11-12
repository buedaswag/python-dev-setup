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
