
" Cursoer by Mode Settings

let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[3 q" "SR = REPLACE mode
let &t_EI.="\e[3 q" "EI = NORMAL mode (ELSE)

" Cursor settings:

"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

set cursorline
set shell=bash "need because I use fish shell
set conceallevel=2

colorscheme jellybeans

set showtabline=2
set modelines=0
set vb "flash screen rather than sound bell
set laststatus=2 " Always display the statusline in all windows
set list " show trailing whiteshace and tabs
"set listchars=eol:↲,tab:▶▹,nbsp:␣,extends:…,trail:•
set listchars=tab:▸\ ,extends:>,precedes:<,nbsp:+,trail:•
set mouse=a
set wildmenu
set showtabline=2
set scrolloff=4
set autoindent
set backspace=indent,eol,start
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set number
set relativenumber
set lazyredraw
set regexpengine=1
set hlsearch
set incsearch
set ignorecase
set smartcase
set linebreak
set textwidth=80
set hidden

" Tabs
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2

" Formatting
syntax on
set noswapfile
set splitright
set splitbelow

" Javascript Syntax Formatting
let g:javascript_plugin_flow = 1
let g:used_javascript_libs = 'underscore,react,jasmine,chai,d3,ramda,vue'
set concealcursor=nc
set conceallevel=1
let g:jsx_ext_required = 0
" let g:javascript_conceal_null       = "ø"
" let g:javascript_conceal_this       = "@"
" let g:javascript_conceal_return     = "⇚"
" let g:javascript_conceal_undefined  = "¿"
" let g:javascript_conceal_NaN        = "ℕ"
" let g:javascript_conceal_prototype  = "¶"
" let g:javascript_conceal_static     = "•"
let g:vim_jsx_pretty_colorful_config = 1

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
if has("gui_running")
"tell the term has 256 colors
  set t_Co=256
end

if &diff
    set diffopt-=internal
    set diffopt+=vertical
endif

autocmd BufRead,BufNewFile .{jscs,jshint,eslint,babel}rc set filetype=json
autocmd BufRead,BufNewFile *.prisma set syntax=graphql
autocmd InsertEnter * setlocal conceallevel=2 concealcursor=nc
autocmd InsertLeave * setlocal conceallevel=2 concealcursor=inc
autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql ALEFix
autocmd BufRead,BufNewFile *.json setlocal conceallevel=2 concealcursor=nc

augroup VimCSS3Syntax
  autocmd!
  autocmd FileType css setlocal iskeyword+=-
augroup END
