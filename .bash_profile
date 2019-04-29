PATH=/usr/local/bin:$PATH
PATH=$PATH:~/Library/Python/2.7/bin

export PATH=/usr/local/bin:$PATH

eval "$(rbenv init -)"

. "$HOME/.bashrc"

# support git commit gpg signing
export GPG_TTY=$(tty)
