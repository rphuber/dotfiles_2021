" Key Mappings

let mapleader = "\<Space>"

nnoremap 0 ^
nnoremap j gj
nnoremap k gk

nmap <silent> <Left> :tabp<CR>
nmap <silent> <Right> :tabn<CR>
nmap <silent> <Up> :bnext<CR>
nmap <silent> <Down> :bprevious<CR>

nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv
vnoremap <silent> <Down> :m '>+1<CR>gv=gv
vnoremap <silent> <Up> :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

map <Leader>e :e <C-R>=escape(expand("%:p:h"),' ') . '/'<CR>
map <Leader>s :split <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
nnoremap <silent> <Leader>v :vnew <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
nnoremap <silent> <Leader>tnf :tabnew<C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
nnoremap <silent> <Leader>tn :tabnew<CR>
nnoremap <silent> <Leader>tc :tabclose<CR>
nnoremap <silent> <Leader>ts :tab split<CR>
nnoremap <silent> <Leader>to :tabonly<CR>
nnoremap <silent> <Leader>ut :MundoToggle<CR>
nnoremap <silent> <Leader>ff :Files<CR>
nnoremap <silent> <Leader>gf :GFiles<CR>
nnoremap <silent> <Leader>b :Buffer<CR>
nnoremap <silent> <leader>gs :G<cr>
nmap <silent> <leader>fix <Plug>(ale_fix)

" Split edit your vimrc. Type space, v, r in sequence to trigger
nmap <Leader>vr :vsp $MYVIMRC<cr>
" Source (reload) your vimrc. Type space, s, o in sequence to trigger
nmap <Leader>so :source $MYVIMRC<cr>
" Explore using leader
nmap <Leader>ex :Explore<cr>
" Show keyword for formatting of text under cursor
nmap <Leader>sI :call <SID>SynStack()<CR>

if executable('tmux') && $TMUX !=# ''
  let g:vimIsInTmux = 1
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
else
  let g:vimIsInTmux = 0
endif

function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
