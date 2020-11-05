" Lihtline
let g:tmuxline_theme = 'tmux'
let g:tmuxline_powerline_separators = 0
let g:lightline = {}
let g:lightline.colorscheme = 'Tomorrow_Night'

let g:lightline.component = {
      \ 'lineinfo': ' %3l:%-2c'
      \}

let g:lightline.component_function = {
      \ 'filename': 'LightlineFilename',
      \ 'readonly': 'LightlineReadonly',
      \ 'fugitive': 'LightlineFugitive'
      \}

let g:lightline.component_expand = {
      \ 'linter_checking': 'lightline#ale#checking',
      \ 'linter_infos': 'lightline#ale#infos',
      \ 'linter_warnings': 'lightline#ale#warnings',
      \ 'linter_errors': 'lightline#ale#errors',
      \ 'linter_ok': 'lightline#ale#ok',
      \ 'buffers': 'lightline#bufferline#buffers'
      \}

let g:lightline.component_type = {
      \ 'linter_checking': 'right',
      \ 'linter_infos': 'right',
      \ 'linter_warnings': 'warning',
      \ 'linter_errors': 'error',
      \ 'linter_ok': 'right',
      \ 'buffers': 'tabsel'
      \}

let g:lightline.active = {
      \'right': [
        \[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
        \[ 'lineinfo' ],
        \[ 'fileformat' ],
        \['filetype'],
      \],
      \'left': [
        \['mode', 'paste'],
        \['filename']
      \]
    \}

let g:lightline.tabline = {
      \ 'left': [[ 'buffers' ]],
      \ 'right': [[ 'fugitive' ]]
      \}

let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'

" let g:lightline.separator = { 'left': "\ue0b8", 'right': "\ue0be" }
" let g:lightline.subseparator = { 'left': "", 'right': "", }
" let g:lightline.tabline_separator = { 'left': "\ue0bc", 'right': "\ue0ba" }
" let g:lightline.tabline_subseparator = { 'left': '/', 'right': '/' }

" if g:vimIsInTmux == 1
"   let g:tmuxline_separators = {
"         \ 'left' : "\ue0bc",
"         \ 'left_alt': "\u005c",
"         \ 'right' : "\ue0ba",
"         \ 'right_alt': "\u005c",
"         \ 'space' : ' '
"         \}
" endif
"-------------------------------------------------------------------------
function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction

function! Devicons_Filetype()"{{{
  " return winwidth(0) > 70 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() . ' ' . &filetype : 'no ft') : ''
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction"}}}

function! Devicons_Tab_Filetype(n)"{{{
  " return winwidth(0) > 70 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  return winwidth(0) > 70 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction"}}}

function! Devicons_Fileformat()"{{{
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction"}}}

function! LightlineReadonly()
  return &readonly ? '' : ''
endfunction

function! LightlineFugitive()
  if exists('*FugitiveHead')
    let branch = FugitiveHead()
    return branch !=# '' ? branch  : ''
  endif
  return ''
endfunction
