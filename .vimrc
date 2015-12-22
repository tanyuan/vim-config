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

" Read tags from file 'tags' and search all the way to root
set tags+=tags;/

" Indentation
set autoindent " Auto indention based on the line above
set expandtab " Use spaces instead of tabs
set tabstop=4 " Number of spaces inserted when tab is pressed
set shiftwidth=4 " Number of spaces for indentation
set softtabstop=4 " Makes backspace treat 4 spaces like a tab 
" Toggle Tab/Space by Ctrl+t
nmap <leader>t :set expandtab!<CR>

" Single tap to trigger command-line
nmap ; :
vmap ; :
" Single tap to trigger register
nmap ' "

" Move cursor by display lines when wrapping
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Hightlight search
set hlsearch
" Toggle highlight search by Ctrl+h
nmap <leader>h :set hlsearch!<CR>

" Toggle comment by Ctrl+c
map <C-c> <plug>NERDCommenterToggle

" Use tab key to switch windows
set autochdir
map <Tab> <C-W>W:cd %:p:h<CR>:<CR>

" Space to switch to next buffer
nmap <space> :bn<CR>

" Remember last cursor position
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" Save current view settings on a per-window, per-buffer basis.
function! AutoSaveWinView()
    if !exists("w:SavedBufView")
        let w:SavedBufView = {}
    endif
    let w:SavedBufView[bufnr("%")] = winsaveview()
endfunction

" Restore current view settings.
function! AutoRestoreWinView()
    let buf = bufnr("%")
    if exists("w:SavedBufView") && has_key(w:SavedBufView, buf)
        let v = winsaveview()
        let atStartOfFile = v.lnum == 1 && v.col == 0
        if atStartOfFile && !&diff
            call winrestview(w:SavedBufView[buf])
        endif
        unlet w:SavedBufView[buf]
    endif
endfunction

" When switching buffers, preserve window view.
if v:version >= 700
    autocmd BufLeave * call AutoSaveWinView()
    autocmd BufEnter * call AutoRestoreWinView()
endif

" For GVIM
set guioptions-=T  " remove toolbar
set guifont=Monospace\ 11 " set font size
