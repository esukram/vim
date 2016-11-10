" load pathogen
execute pathogen#infect()

" select eye-friendly colors
colorscheme zenburn

" use spaces instead of tabs
"Indentation levels every four columns
set tabstop=4

"Convert all tabs typed to spaces
set expandtab

"Indent/outdent by four columns
set shiftwidth=4

"Indent/outdent to nearest tabstop
set shiftround

" nice indention
set autoindent
set smartindent

"enable syntax
syntax on

"set linenumbers
set number

"set filetype detection on
filetype on
filetype plugin on
filetype indent on

"colorize search pattern
set hlsearch

"autofocus search pattern
set incsearch

" search ci in general, only cs when in camel-case
set ignorecase
set smartcase

"sets vim not vi compatible
set nocompatible

"lets you switch buffer without saving
set hidden

" do not redraw while running macros (much faster) (LazyRedraw)
set lazyredraw

" follow mouse focus
set mousefocus

" split new window below of us
set splitbelow

" visual bell
set visualbell

" set spaces as '.'
set list
set listchars=tab:\|·,trail:·

" smaller line high, less spaces
set lsp=0

" minimal number of screen lines to keep above and below the cursor
set scrolloff=5

" minimal number of screen columns to keep to the left and to the right of the cursor
set sidescrolloff=3

"""""""""""""""""
" Folding stuff "
"""""""""""""""""
" fold only sub foldings
set foldlevelstart=1
" do not fold less than 10 lines
set foldminlines=5

"Highlight spaces at the end of lines
let c_space_errors=1
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" show <tab> completion all alternatives
set wildmenu
set wildmode=list:longest,full

"show statusline
set laststatus=2

" set many undos
set undolevels=1000

" get more history
set history=1000

" central backup dir
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
let g:netrw_home=expand("~/.vim/tmp")

set textwidth=120
set colorcolumn=100
highlight ColorColumn ctermbg=236 guibg=#2e3330

""""""""""""""""
" auto actions
""""""""""""""""
" save on focus lost
au FocusLost * :wa

""""""""""""""""
" key bindings "
""""""""""""""""
" use crtl+n for new tab
map <silent> <c-n> :tabnew<cr>

" copy & paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

