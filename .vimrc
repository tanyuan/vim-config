" Load plugins
filetype plugin on

" Turn on syntax highlighting
syntax on

" Use color scheme from ~/.vim/color/
colorscheme monokai-arc

" Show line numbers
set number

" Enable switching buffers with unsaved changes
set hidden

" Use mouse to scroll and select
set mouse=a

" Sync to system clipboard
set clipboard=unnamedplus

" Read tags from file 'tags'
set tags+=tags

" Indentation
set autoindent " Auto indention based on the line above
set expandtab " Use spaces instead of tabs
set tabstop=4 " Number of spaces inserted when tab is pressed
set shiftwidth=4 " Number of spaces for indentation
set softtabstop=4 " Makes backspace treat 4 spaces like a tab 
" Toggle Tab/Space by Ctrl+t
nmap <C-t> :set expandtab!<CR>

" Single tap to trigger command-line
nmap ; :

" Space to switch to next buffer
nmap <space> :bn<CR>

" Hightlight search
set hlsearch
" Toggle highlight search by Ctrl+h
nmap <C-h> :set hlsearch!<CR>

" Select all by Ctrl+a
nmap <C-a> ggVG

" Toggle comment by Ctrl+c
map <C-c> <plug>NERDCommenterToggle

" Remember last cursor position
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" Automatic save folds and restore folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 

" Use tab key to switch windows
set autochdir
map <Tab> <C-W>W:cd %:p:h<CR>:<CR>

" For GVIM
set guioptions-=T  " remove toolbar
set guifont=Monospace\ 11 " set font size
