# Editor config
(( ${+PAGER}   )) || export PAGER='less'
(( ${+EDITOR}  )) || export EDITOR='vim'
export PSQL_EDITOR='vim -c"setf sql"'

# enable colored output from ls, etc. on FreeBSD-based systems
export CLICOLOR=1

# Set command history settings
setopt appendhistory extendedglob histignoredups nonomatch prompt_subst interactivecomments noclobber
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096

############################
########## ZPlug ###########
############################

# zplug init
source ~/.zplug/init.zsh

# zplug plugins
zplug "rupa/z", \
    from:github, \
    as:command, \
    use:"z.sh", \
    rename-to:z

zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# Aliases
source ~/.aliases.sh

# remove duplicates in $PATH
typeset -aU path

# makes color constants available
autoload -U colors; colors

# completion
autoload -U compinit; compinit

# Source asdf
. /usr/local/opt/asdf/asdf.sh

