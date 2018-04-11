# set vi as terminal editor
export EDITOR=vi

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    GIT_PROMPT_THEME="Single_line"
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

source ~/git-completion.bash

# git aliases
alias gg="git log --graph --oneline --decorate --branches=*"

# js project aliases
alias gt="gulp test"
alias gtf="gulp test:fast"
alias gs="gulp serve"

# hub
alias hb="hub browse"

# Terraform
export PATH=/usr/local/terraform/bin:/home/simon/terraform:$PATH

export PATH="$HOME/.bin:$PATH"

export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin
export DISABLE_SPRING=1

eval "$(hub alias -s)"

# brew install direnv
eval "$(direnv hook bash)"

# speed up key repeat rates
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
