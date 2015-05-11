if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    GIT_PROMPT_THEME="Single_line"
    source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

source ~/git-completion.bash
source ~/git-flow-completion.bash

# python project aliases
alias pt="python setup.py nosetests"
alias pi="python setup.py install"

# js project aliases
alias gt="grunt test"
alias gs="grunt server"
