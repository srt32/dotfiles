ln -s ~/src/github.com/srt32/dotfiles/.* ~/ && \
ln -s ~/src/github.com/srt32/dotfiles/git-completion.bash ~/git-completion.bash && \
rm -rf ~/.git && \
brew update && \
sudo chown -R $(whoami) /usr/local/var/homebrew && \
sudo chown -R $(whoami) /usr/local/Homebrew && \
sudo chown -R $(whoami) /usr/local/etc && \
sudo chown -R $(whoami) /usr/local/share && \
brew install hub && \
brew link hub && \
brew install the_silver_searcher && \
mkdir -p ~/.vim/autoload ~/.vim/bundle && \ \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
pushd ~/.vim/bundle && \
git clone git://github.com/altercation/vim-colors-solarized.git;
git clone git://github.com/thoughtbot/vim-rspec.git;
git clone git://github.com/tpope/vim-rails.git;
git clone git://github.com/tpope/vim-fugitive.git;
git clone https://github.com/janko-m/vim-test
git clone git://github.com/kien/ctrlp.vim.git;
git clone git://github.com/rking/ag.vim.git;
popd
