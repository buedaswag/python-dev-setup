# python-dev-setup

Setting up a python development environment

## Steps

* setup wsl, vscode etc
    * https://yduman.github.io/wsl2.html
    * [https://stackoverflow.com/questions/30884131/remove-trailing-spaces-automatically-or-with-a-shortcut](https://stackoverflow.com/a/53663494)
    * https://stackoverflow.com/questions/38561881/how-do-i-turn-on-text-wrapping-by-default-in-vs-code
* setup python, venv, git, etc (lacks isntructions for setting up ssh)
    * https://github.com/LDSSA/ds-prep-course-2021
* setup git 
    * https://github.com/LDSSA/batch5-students#setup-git-and-github
* docker
    * https://www.docker.com/products/docker-desktop
* ~/.zshrc
    * add the contents of file .zshrc of this repo to the end of the ~/.zshrc in our machine
    * `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
    * `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
    * `git config --global pager.branch false`
* clipboard manager
    * https://ditto-cp.sourceforge.io/#:~:text=Ditto%20is%20an%20extension%20to,formats%2C%20.....
    * https://www.youtube.com/watch?v=bBvKvJfWw2c

### Mac

* https://docs.brew.sh/Installation
* https://rectangleapp.com/
* https://pilotmoon.com/scrollreverser/
* `export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"`
* https://stackoverflow.com/questions/27616474/how-can-i-scroll-up-more-increase-the-scroll-buffer-in-iterm2

Vscode extensions

* DavidAnson.vscode-markdownlint
* ban.spellright

## Useful Commands

```bash
# vscode diff two files
code -d <file 1> <file 2>
```

Looking at differences between folders of different repos <https://www.geeksforgeeks.org/diff-command-linux-examples/>

* The key-map to auto-format the selected JSON is ALT-SHIFT-F
