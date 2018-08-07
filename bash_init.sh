# git branch function (https://gist.github.com/githubteacher/e75edf29d76571f8cc6c)
parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Setting the color for the prompt
GRAY='\[\e[1;30m\]'
CYAN='\[\e[0;36m\]'
YELLOW='\[\e[1;33m\]'
RED='\[\e[1;31m\]'
PURPLE='\[\e[1;35m\]'
ENDCOLOR='\[\e[0m\]'
update_PS1() {
  PS1="$GRAY> $CYAN\u$GRAY@$PURPLE\h $GRAY: $YELLOW\W$RED$(parse_git_branch)"
  PS1="$PS1\n"
  PS1="$PS1$GRAY\$ $ENDCOLOR"
}
shopt -u promptvars
PROMPT_COMMAND=update_PS1
export PS1

# scripts directory (also under source control)
SETTINGS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SCRIPTS_DIR=$SETTINGS_DIR/shell_scripts

# Aliases
alias apti="sudo apt-get install"
alias openmind="ssh c_swain@openmind7.mit.edu"
alias ebashrc="emacs $REPO_DIRECTORY/unix_settings/.bashrc; source ~/.bashrc &"
alias sbashrc="source ~/.bashrc"
alias pip="pip3"
alias py="python3.6"
alias py2="python2"
alias la="ls -a"
alias ll="ls -l"
alias jnb="jupyter notebook"
alias cdr="cd $REPO_DIRECTORY"

# Glob Scripts
alias gbmv="bash $SCRIPTS_DIR/globmv.sh"
alias gbls="bash $SCRIPTS_DIR/globls.sh"

# Git
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gph="git push"
alias gph1="git push -u origin master"
alias gpl="git pull"
alias gamd="git commit --amend"
alias gg="bash $SCRIPTS_DIR/gg.sh"
