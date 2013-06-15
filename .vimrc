" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup

" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')
" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

set showcmd      " Shows what you are typing as a command
set nocompatible " Necessary for lots for cool vim things
set ruler        " Always show current positions along the bottom
set nu           " Set linenumber
set ai           " Auto indent
set si           " Smart indet
set wrap         " Wrap lines
syntax on

" No sound on errors
set noerrorbells
set novisualbell
set ignorecase   " Ignore case when searching
set smartcase
set hlsearch     " Highlight search things
set incsearch    " Make search act like search in modern browsers
set nolazyredraw " Don't redraw while executing macros
set magic        " Set magic on, for regular expressions
set showmatch    " Show matching bracets when text indic

set autoindent   " Copy indent form current when starting a new line
set smartindent

set tabstop=1
set shiftwidth=1
set expandtab     " Convert Tabs into Spaces
set softtabstop=4 " Tab conversion to number of spaces
set shiftwidth=2  " Auto-indent amount
set shiftround    " When at 3 spaces, when I hit > .. go to 4, not 5
set smarttab

set noswapfile
set nobackup
set nowritebackup
set autowriteall
set autoread
au FocusLost * :wa " Auto Save when losing focus
