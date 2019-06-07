status --is-interactive; and source (rbenv init -|psub)
set fish_greeting ""
set -gx EDITOR (type -p vim)
set -gx FZF_DEFAULT_OPTS '--color fg:188,bg:233,hl:103,fg+:222,bg+:234,hl+:104 --color info:183,prompt:110,spinner:107,pointer:167,marker:215'
set -gx FZF_DEFAULT_COMMAND 'ag -l --files-with-matches --hidden'
set -gx FZF_CTRL_T_COMMAND 'ag -l --files-with-matches --hidden'

fundle plugin 'edc/bass'
fundle init

nvm use 'lts/*'

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/rphuber/.nvm/versions/node/v8.11.4/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/rphuber/.nvm/versions/node/v8.11.4/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/rphuber/.nvm/versions/node/v8.11.4/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish ]; and . /Users/rphuber/.nvm/versions/node/v8.11.4/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.fish
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/rphuber/.nvm/versions/node/v8.11.4/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish ]; and . /Users/rphuber/.nvm/versions/node/v8.11.4/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.fish
