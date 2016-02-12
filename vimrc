" Vim Config by tanyuan
" =====================
" http://github.com/tanyuan/vim-config
"  _
" | |_ __ _ _ __  _   _ _   _  __ _ _ __
" | __/ _` | '_ \| | | | | | |/ _` | '_ \
" | || (_| | | | | |_| | |_| | (_| | | | |
"  \__\__,_|_| |_|\__, |\__,_|\__,_|_| |_|
"                 |___/

" Load plugins
filetype plugin on

" Turn on syntax highlighting
syntax on

" Use color scheme from ~/.vim/color/
colorscheme monokai

" Show the keystrokes being entered in the screen
set showcmd

" Show line numbers
set number

" Set status line with vim-fugitive plugin to show git branch
" Status line won't show up if only one window
set statusline=%<%f\ %{fugitive#statusline()}\ %h%m%r%=%-14.(%l,%c%V%)\ %P

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
nnoremap ; :
vnoremap ; :
" Single tap to trigger register
nnoremap ' "

" SPECIAL KEY
" =================================
" Switch to next buffer
nmap \ :bn<CR>

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
" Map Space to Leader
let mapleader=" "
" Reload Vim config
nmap <Leader>r :source ~/.vimrc<CR>
" Quick save
nmap <Leader>w :w<CR>
" Quick quit
nmap <Leader>q :q<CR>
" Toggle Tab/Space by Ctrl+t
nmap <Leader>t :set expandtab!<CR>
" Toggle highlight search by Ctrl+h
nmap <Leader>h :set hlsearch!<CR>
" Put in new line
nmap <Leader>p o<Esc>p
" Enter new line with additional blank line below
nmap <Leader><CR> o<Esc>O
" CtrlP plugin, use this instead of :e for fuzzy search
nmap <Leader>f :CtrlP<CR>
" Insert Bash script beginning
nmap <Leader>b :r ~/Templates/bash.sh<CR>ggdd

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

" Use GitHub-flavored Markdown syntax highlighting by default for .md files
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
