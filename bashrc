# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash

## bashrc ##

# -----------------------------------------
# 1. GIT BRANCH AND DIRECTORY HIGHLIGHTING
# -----------------------------------------

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# -----------------------------------------
# 2. SET PATHS
# -----------------------------------------

export PATH="$PATH:/usr/local/bin/"
export GOPATH=$HOME/code/go
export PATH=$PATH:$GOPATH/bin

# -----------------------------------------
# 3. DARK THEME
# -----------------------------------------

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
