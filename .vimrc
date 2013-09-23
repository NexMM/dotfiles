filetype on
filetype plugin indent on

set nocompatible

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'vim-hardtime'
NeoBundle 'nerdtree'
NeoBundle 'zencoding-vim'
NeoBundle 'vim-surround'
NeoBundle 'ctrlp.vim'
NeoBundle 'vim-ruby'
NeoBundle 'vim-misc'
NeoBundle 'molokai'
NeoBundle 'https://github.com/biskark/vim-ultimate-colorscheme-utility.git'
NeoBundle 'https://github.com/gregsexton/MatchTag'
NeoBundle 'https://github.com/xolox/vim-shell'
NeoBundle 'https://github.com/tpope/vim-endwise.git'
NeoBundle 'https://github.com/uu59/vim-herokudoc-theme.git'

syntax on

set number

set noerrorbells

set smartindent

set incsearch

set autoindent

set incsearch

set ignorecase

set hlsearch

set expandtab

set shiftwidth=2

set tabstop=2

set noswapfile

set nobackup

set nowritebackup


"keymapping
map <c-e> <c-y>,
map <c-h> :nohl<CR>,

augroup vimrcs
  au!
  au bufwritepost ~/.vimrc
  \ source ~/.vimrc |
  \ source ~/.gvimrc |
augroup END
