set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching
set ignorecase              " case insensitive
set mouse=v                 " middle-click paste with
set hlsearch                " highlight search
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=120                  " set an 80 column border for good coding style
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim

let mapleader = " "

call plug#begin("~/.vim/plugged")
 Plug 'dracula/vim'
 Plug 'scrooloose/nerdtree'
 Plug 'valloric/youcompleteme'
 Plug 'octol/vim-cpp-enhanced-highlight'
 Plug 'zivyangll/git-blame.vim'
call plug#end()

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
autocmd VimEnter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Open the existing NERDTree on each new tab.
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-t> :YcmCompleter GoTo<CR>
let g:clang_complete_loaded = 1
let g:clang_library_path='/opt/llvm-10/lib64/libclang.so'

let g:airline_powerline_fonts = 1

" allows vims location list with diagnostic data
let g:ycm_always_populate_location_list = 1

" don't close quickfix windows on Ycm GoTo*
autocmd User YcmQuickFixOpened autocmd! ycmquickfix WinLeave

filetype plugin indent on
syntax on

colorscheme dracula
