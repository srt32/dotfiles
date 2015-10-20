PATH=/usr/local/bin:$PATH

#virtualenv
export WORKON_HOME=~/.virtualenvs
export PATH=/usr/local/bin:$PATH
source /usr/local/bin/virtualenvwrapper.sh

#nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

eval "$(rbenv init -)"

#Make node find modules when using nvm: TODO: don't hardcode version
NODE_PATH=$NODE_PATH:/Users/simon/.nvm/versions/node/v0.12.2/lib/node_modules/

. "$HOME/.bashrc"
