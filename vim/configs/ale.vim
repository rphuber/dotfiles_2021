" ALE
let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \  'javascript': ['eslint', 'prettier'],
  \  'go': ['gofmt', 'goimports'],
  \  'typescript': ['eslint', 'prettier'],
  \  'json': ['eslint', 'prettier'],
  \  'graphql': ['eslint', 'prettier'],
  \  'css': ['eslint'],
  \  'scss': ['eslint'],
  \  'elixir': ['mix_format'],
  \  'reason': ['refmt'],
  \  'html': ['prettier'],
  \  'c': ['clang-format'],
  \}

if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

let g:ale_fix_on_save = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
set completeopt=menu,menuone,preview,noselect,noinsert

let g:ale_sign_column_always = 1
let g:ale_sign_error= '=>'
let g:ale_sign_warning= '->'
" let g:ale_disable_lsp = 1

" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1

nnoremap <silent> <Leader>gd :ALEGoToDefinition<CR>
nnoremap <silent> <Leader>sgd :ALEGoToDefinition -vsplit<CR>
nnoremap <silent> <Leader>ho :ALEHover<CR>
"-------------------------------------------------------------------------
" Elixir settings
" Required, explicitly enable Elixir LS
let g:ale_linters = {
      \ 'elixir' : ['elixir-ls']
      \}

" Required, tell ALE where to find Elixir LS
let g:ale_elixir_elixir_ls_release = expand("~/.elixir-ls/release/language_server.sh")

" Optional, you can disable Dialyzer with this setting
let g:ale_elixir_elixir_ls_config = {'elixirLS': {'dialyzerEnabled': v:false}}

hi SpellBad guifg=#FFFFFF guibg=NONE gui=undercurl guisp=#FFFFFF ctermfg=124 ctermbg=NONE cterm=bold,underline
hi SpellCap guifg=#FFFFFF guibg=NONE gui=undercurl guisp=#FFFFFF  ctermfg=11 ctermbg=NONE cterm=bold,underline
