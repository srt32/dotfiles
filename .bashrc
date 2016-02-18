if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    GIT_PROMPT_THEME="Single_line"
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

source ~/git-completion.bash
source ~/git-flow-completion.bash

# python project aliases
alias pt="python setup.py nosetests"
alias ps="python manage.py runserver"
alias pipi="pip install -e ."

# git aliases
alias gg="git log --graph --oneline --decorate --branches=*"

# js project aliases
alias gt="gulp test"
alias gtf="gulp test:fast"
alias gs="gulp serve"

# node related
alias ni="npm install"

# docker-machine
eval $(docker-machine env default)

export PATH="$HOME/.bin:$PATH"

eval "$(hub alias -s)"
