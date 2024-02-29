# python-dev-setup

Setting up a python development environment

## Steps

* setup wsl, vscode etc
    * https://yduman.github.io/wsl2.html
    * [https://stackoverflow.com/questions/30884131/remove-trailing-spaces-automatically-or-with-a-shortcut](https://stackoverflow.com/a/53663494)
    * https://stackoverflow.com/questions/38561881/how-do-i-turn-on-text-wrapping-by-default-in-vs-code
    * Diff folders extension
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
    * [windows ditto](https://ditto-cp.sourceforge.io/) - [tutorial](https://www.youtube.com/watch?v=bBvKvJfWw2c)
    * [mac maccy](https://maccy.app/)
* notes
   * cd ~/ws/notes && chmod -R 700 .

### Mac

* https://docs.brew.sh/Installation
* https://rectangleapp.com/
* https://pilotmoon.com/scrollreverser/
* `export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"`
* https://stackoverflow.com/questions/27616474/how-can-i-scroll-up-more-increase-the-scroll-buffer-in-iterm2
* https://apple.stackexchange.com/a/345228

Vscode extensions

* DavidAnson.vscode-markdownlint
* ban.spellright

## Useful Commands

* Format Selection: Cmd + K, Cmd + F (press Cmd + K, release both keys, and then press Cmd + F)
* Cursor in multiple lines: Opt + Shift + i 

```bash
# vscode diff two files
code -d <file 1> <file 2>
```

Looking at differences between folders of different repos <https://www.geeksforgeeks.org/diff-command-linux-examples/>

```bash
# vscode diff two files
diff -r directory1/ directory2/
```

* The key-map to auto-format the selected JSON is ALT-SHIFT-F

Compare 2 commits in vscode

* https://stackoverflow.com/questions/57087860/using-vscode-how-do-i-compare-two-non-consecutive-commits-on-a-file-in-gitlens

## Chat-GPT

### Custom Instructions

When ansering questions about software engineering, base the answer on the dev ops handbook and the 3 ways of dev ops

when answering questions about blender please always include all mac keyboard shortcuts for all actions

Please format code to fit within an 80-character width limit

python code should have type hints on function params and return types and docs like
:param ...: ...
:param ...: ...
:return: ...

when replying in portuguese, do it in european portuguese

### How would you like ChatGPT to respond?

if the answer is too big, especially in the case where we're writing something together like code or text, spit out as much as you can, and them prompt me for more

start the response with the core part of the answer, then add the resto of the text, for example, if i ask "how to get a str inside a _io.StringIO", i wnat you to answer "getvalue() method of the StringIO object is what you can use to retrieve a string from an _io.StringIO object in Python." instead of "To retrieve a string from an _io.StringIO object in Python, you can use the getvalue() method of the StringIO object."
