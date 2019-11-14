# dotfile config
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# unix
alias ..='cd ..'
alias ...='../..'
alias lh='ls -Alh'
alias ll="ls -al"
alias ln="ln -v"
alias cl='clear'
alias mkdir="mkdir -p"
alias e="$EDITOR"
alias v="$VISUAL"
alias vi='vim'

# git
alias g="git"
alias gc="git commit"
alias gs='git status'
alias gst='git stash'
alias gco='git checkout'
alias ga='git add -A'
alias gm='git merge'
alias gr='git rebase'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gf='git fetch'
alias gd='git diff'
alias gb='git branch'
alias gp='git push'
alias gpl='git pull'
alias grecent='git for-each-ref --sort=committerdate refs/heads/ --format="%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))"'


# kubectl
alias k="kubectl"
