" Load plugins
filetype plugin on

" Turn on syntax highlighting
syntax on

" Use color scheme from ~/.vim/color/
colorscheme monokai-arc

" Show the keystrokes being entered in the screen
set showcmd

" Show line numbers
set number

" Enable switching buffers with unsaved changes
set hidden

" Hightlight search
set hlsearch

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

" ESCAPE KEY
" =================================
" Map Tab to Esc
nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
inoremap <Tab> <Esc>`^
" You can avoid tabs by using indents :
"   Normal Mode : <<, >> 
"   Insert Mode : Ctrl-d, Ctrl-t 

" MOVING KEY
" =================================
" Move cursor by display lines when wrapping
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" AVOID SHIFT KEY
" =================================
" Single tap to trigger command-line
nmap ; :
vmap ; :
" Single tap to trigger register
nmap ' "

" SPECIAL KEY
" =================================
" Space to switch to next buffer
nmap <Space> :bn<CR>

" Use [[ ]] to go to previous/next function in C/C++
"   with brackets {} not starting at first column
map [[ ?{<CR>w99[{
map ][ /}<CR>b99]}
map ]] j0[[%/{<CR>
map [] k$][%?}<CR>

" CTRL KEY
" =================================
" Caps Lock is mapped to Ctrl in OS
" Toggle comment by Ctrl+/
map <C-_> <plug>NERDCommenterToggle
" Use Ctrl+hjkl to switch windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" LEADER KEY
" =================================
" Map comma to Leader
nmap , <Leader>
vmap , <Leader>
" Toggle Tab/Space by Ctrl+t
nmap <leader>t :set expandtab!<CR>
" Toggle highlight search by Ctrl+h
nmap <Leader>h :set hlsearch!<CR>
" Put in new line
nmap <Leader>p o<Esc>p

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
