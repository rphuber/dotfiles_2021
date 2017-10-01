status --is-interactive; and source (rbenv init -|psub)
set fish_greeting ""
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1
nvm use default
