" Giulio Iotti <dullgiulio@gmail.com>
"
" Basic VIM configuration

" Definitely not compatible
set nocompatible

" Trust modeline set by file
set modeline

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

" Indent, with simple paste from outside, please
set smartindent
"set autoindent

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

" Highlight search results
set hlsearch
" Match case only when I mean it
set ignorecase
set smartcase
" Incremental search: I don't like it, better not move if no full match
set noincsearch
" Start searching from the beginning after reaching EOF
set wrapscan

" Use visual bell, no sounds
set vb

" Do not keep backup files
set nobackup
set nowritebackup

" Chez moi, terminals have a dark background
set background=dark
syntax on

" Bigger history
set history=100

" Better command completion for noobs like me
set wildmenu
set wildmode=longest:list,full

" Start scrolling 4 lines before touching the first/list line in view
set scrolloff=4

" Automatically re-read files
set autoread

" On laptop, some special options for SSD
if hostname() == "veli"
    " Save your swp files to a less annoying place than the current directory.
    " If you have .vim-swap in the current directory, it'll use that.
    " Otherwise it saves it to ~/.vim/swap, ~/tmp or .
    if isdirectory($HOME . '/tmp/user/1000/vim/') == 0
      :silent !mkdir -p /tmp/user/1000/vim/ >/dev/null 2>&1
    endif
    set directory=/tmp/user/1000/vim//
    set directory+=.

    " Remember undo between sessions
    set undofile
    set undodir=/tmp/user/1000/vim//
    set undodir+=.
endif
