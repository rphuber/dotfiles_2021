" Undo
set undofile                " Save undos after file closes
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

if has("nvim")
    set undodir=.config/nvim/undo
else
    set undodir=.vim/undo
endif
