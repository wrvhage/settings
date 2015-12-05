# COLORS
source ${HOME}/.bash_colors

# ENVIRONMENT
export PATH=~/bin:~/usr/local/bin:/Applications/Racket\ v6.3/bin:$PATH
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# ALIASES
alias ls="ls -AFskh"
alias top="top -o cpu"
alias e="emacs"

# GIT
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="${Yellow}\u${Cyan}@${Purple}\h ${Red}\W${Green}\$(parse_git_branch)${Color_Off} ${IYellow}⊨${Color_Off} "

# PYTHON
export PYTHONPATH=$PYTHONPATH:.
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
