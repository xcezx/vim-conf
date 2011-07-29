" Basic                                     "{{{1

" vundler                                   "{{{1
set runtimepath+=~/.vim/vundle
call vundle#rc()

Bundle 'quickrun'
Bundle 'Lucius'

" Options                                   "{{{2
if (1 < &t_Co || has('gui')) && has('syntax')
  syntax enable
  if !exists('g:colors_name')
    colorscheme lucius
    set background=dark
  endif
endif

set ambiwidth=double
set autoindent
set autoread
set backspace=indent,eol,start
set clipboard=unnamed
set cursorline
set expandtab
set guicursor=a:blinkon0
set guifont=Envy\ Code\ R:h14
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=L
set hidden
set ignorecase
set incsearch
set laststatus=2
set nolist
set listchars=tab:>-
set modelines=5
set mouse=
set nobackup
set nocompatible
set noswapfile
set nowrap
set scrolloff=10
set shellslash
set shiftwidth=4
set shortmess+=I
set showcmd
set showmatch
set showmode
set smartcase
set smartindent
set softtabstop=4
set tabstop=4
set whichwrap=b,s,h,l,<,>,[,]
set wildmenu
set wrapscan

let &statusline = ''
let &statusline .= '%<%f %h%m%r%w'
let &statusline .= '%='
let &statusline .= '[%{&l:fileencoding == "" ? &encoding : &l:fileencoding}]'
let &statusline .= '  %-14.(%l,%c%V%) %P'

" Convenience                               "{{{1
" http://vim-users.jp/2009/09/hack74/       "{{{2
augroup AutoReloadCmd
  autocmd!
augroup END
if !has('gui_running') && !(has('win32') || has('win64'))
  autocmd AutoReloadCmd BufWritePost $MYVIMRC nested source $MYVIMRC
else
  autocmd AutoReloadCmd BufWritePost $MYVIMRC source $MYVIMRC |
    \if has('gui_running') | source $MYGVIMRC
  autocmd AutoReloadCmd BufWriterPost $MYGVIMRC if has('gui_running') | source $MYGVIMRC
endif

" vim: expandtab softtabstop=2 shiftwidth=2
" vim: foldmethod=marker
