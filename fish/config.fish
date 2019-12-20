status --is-interactive; and source (rbenv init -|psub)
set fish_greeting ""
set -gx EDITOR (type -p vim)

set -gx GOROOT /usr/local/Cellar/go/1.13.4/libexec
set -gx GOPATH /Users/rhuber/.golang:/Users/rhuber/Code/portal

# fzf
set -gx FZF_DEFAULT_OPTS '--color fg:188,bg:233,hl:103,fg+:222,bg+:234,hl+:104 --color info:183,prompt:110,spinner:107,pointer:167,marker:215'
set -gx FZF_DEFAULT_COMMAND 'ag -l --files-with-matches --hidden'
set -gx FZF_CTRL_T_COMMAND 'ag -l --files-with-matches --hidden'

# fnm
fnm env --multi | source
