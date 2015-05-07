PATH=/usr/local/bin:$PATH

#virtualenv
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
source /usr/local/bin/virtualenvwrapper.sh

#nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

eval "$(rbenv init -)"

#Make node find modules when using nvm
NODE_PATH=$NODE_PATH:/Users/simon/.nvm/versions/node/v0.12.2/lib/node_modules/

export GEMFURY_REPO_URL=https://pypi.fury.io/9dLDbAMpUzh7Tu-x4wsz/globality/

. "$HOME/.bashrc"
