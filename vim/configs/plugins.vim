call plug#begin('~/.vim/plugged')

"Fuzzyfinder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug 'stsewd/fzf-checkout.vim'

" Cheat.sh
"Plug 'dbeniamine/cheat.sh-vim'

"file navigation
" Plug 'francoiscabrol/ranger.vim'

Plug 'github/copilot.vim'

" Neovim
" Plug 'lewis6991/gitsigns.nvim'
" Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

"Statusline
" Plug 'nvim-lualine/lualine.nvim'
Plug 'edkolev/tmuxline.vim'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'maximbaz/lightline-ale'

Plug 'ryanoasis/vim-devicons'
"Plug 'kyazdani42/nvim-web-devicons'

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

"Plug 'vim-scripts/buftabline'

"Terminals
" Plug 'voldikss/vim-floaterm'

"Undo
Plug 'simnalamburt/vim-mundo'
"Plug 'mbbill/undotree'

"Search
Plug 'haya14busa/is.vim'
Plug 'haya14busa/vim-asterisk'
Plug 'osyo-manga/vim-anzu'

"Colorschemes
Plug 'flazz/vim-colorschemes'
"Plug 'trevordmiller/nova-vim'
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'haishanh/night-owl.vim'

Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'machakann/vim-sandwich'
"Plug 'tpope/vim-vinegar'
"Plug 'airblade/vim-gitgutter'
"Plug 'mhinz/vim-signify'
"Plug 'jlanzarotta/bufexplorer'
"Plug 'tpope/vim-surround'

"Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"Syntax
Plug 'khaveesh/vim-fish-syntax'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'Quramy/vim-js-pretty-template'
Plug 'digitaltoad/vim-pug'
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'jparise/vim-graphql'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'posva/vim-vue'
Plug 'elixir-lang/vim-elixir'
Plug 'toyamarinyon/vim-swift'
Plug 'keith/swift.vim'
Plug 'lervag/vimtex'
Plug 'rescript-lang/vim-rescript'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'hashivim/vim-terraform'
Plug 'tomlion/vim-solidity'
Plug 'bufbuild/vim-buf'

"Linting/Fixing
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier'

"Language-server
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
"-------------------------------------------------------------------------
