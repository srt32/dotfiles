if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    GIT_PROMPT_THEME="Single_line"
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

source ~/git-completion.bash
source ~/git-flow-completion.bash

# python project aliases
alias pt="python setup.py -q nosetests"
alias ps="python manage.py runserver"
alias pipi="pip install -e ."

# git aliases
alias gg="git log --graph --oneline --decorate --branches=*"

# js project aliases
alias gt="gulp test"
alias gtf="gulp test:fast"
alias gs="gulp serve"

# hub
alias hb="hub browse"

# Remove all *.pyc files
alias killpyc="find . -name "*.pyc" | xargs rm -f"

# node related
alias ni="npm install"

# docker-machine
# eval $(docker-machine env default)

# Terraform
export PATH=/usr/local/terraform/bin:/home/simon/terraform:$PATH

export PATH="$HOME/.bin:$PATH"

export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

eval "$(hub alias -s)"

# speed up key repeat rates
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

# if [ "`docker-machine status development`" = "Running" ]; then
#     eval "$(docker-machine env development)"
# fi

# Remove by name a docker image and related containers
rmimage() {
    docker rm -f $1 && docker images | grep $1 | awk '{print $3}' | xargs docker rmi
}
alias rmi=rmimage
