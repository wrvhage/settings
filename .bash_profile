# COLORS
source ${HOME}/.bash_colors

# ENVIRONMENT
export PATH=~/bin:$PATH
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export JAVA_HOME=`/usr/libexec/java_home`
export LDFLAGS=-L/usr/local/opt/openssl/lib && export CPPFLAGS=-I/usr/local/opt/openssl/include

# ALIASES
alias ls="ls -AFskh"
alias top="top -o cpu"
alias e="emacs"

# Jupyter notebook output stripper
alias nbstrip_jq="jq --indent 1 \
    '(.cells[] | select(has(\"outputs\")) | .outputs) = []  \
    | (.cells[] | select(has(\"execution_count\")) | .execution_count) = null  \
    | .metadata = {\"language_info\": {\"name\": \"python\", \"pygments_lexer\": \"ipython3\"}} \
    | .cells[].metadata = {} \
    '"

function nbstrip_all_cwd {
    for nbfile in *.ipynb; do
        echo "$( nbstrip_jq $nbfile )" > $nbfile
    done
    unset nbfile
}


# GIT
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="${Yellow}\u${Cyan}@${Purple}\h ${Red}\W${Green}\$(parse_git_branch)${Color_Off} ${IYellow}问${Color_Off} "

# PYTHON
export PYTHONPATH=$PYTHONPATH:.
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# JAVA
export DYLD_FALLBACK_LIBRARY_PATH=/Library/Java/JavaVirtualMachines/jdk1.8.0_66.jdk/Contents/Home/jre/lib/server/

# HADOOP
export HADOOP_HOME=/usr/local/Cellar/hadoop/3.1.0
export SPARK_HOME=/usr/local/Cellar/apache-spark/2.4.0/libexec
export JAVA_HOME="$(/usr/libexec/java_home)"



# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# added by Anaconda2 4.2.0 installer
export PATH="/Users/wrvhage/anaconda/bin:$PATH"

# virtualenv
#export WORKON_HOME=~/virtualenvs
#source /usr/local/bin/virtualenvwrapper.sh


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
