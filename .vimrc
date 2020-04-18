
" ------------------------------------------------------------------------------
"  Recommended
" ------------------------------------------------------------------------------

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" " contents. Use this to allow intelligent auto-indenting for each filetype,
" " and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also
" allows you to keep an undo history for multiple files when re-using the same
" window in this way. Note that using persistent undo also lets you undo in
" multiple files even in the same window, but is less efficient and is actually
" designed for keeping undo history after closing Vim entirely. Vim will complain if
" you try to quit without saving, and swap files will keep you safe if your
" computer crashes.
set hidden

" Better command-line completion
set wildmenu

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Enable use of mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Sets file locations for backup files
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup



" ------------------------------------------------------------------------------
"  Visuals
" ------------------------------------------------------------------------------

" Set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
if has('termguicolors')
    set termguicolors
endif

set background=dark
colorscheme moonlight


" Display line numbers on the left
set number

" Highlight searches (use <C-L> to temporarily turn off highlighting; see
" the mapping of <C-L> below)
set hlsearch

" Show partial commands in the last line of the screen
set showcmd

" Highlight the line the cursor is on
set cursorline

" Search as characters are entered
set incsearch

" Highlight as characters are matched
set hlsearch




" ------------------------------------------------------------------------------
"  Indentation
" ------------------------------------------------------------------------------

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set smartindent

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab



" ------------------------------------------------------------------------------
"  Key mappings
" ------------------------------------------------------------------------------

" Map the leader key to space
let mapleader=" "

" Switch off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Move around vim windows with just ctrl+hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Bind save+build to F5
nnoremap <F5> :w<CR> :make<CR>

" Open error window on the left with 80 character width
nnoremap <leader>e :copen<CR> <C-w>H :vert res 80<CR>

" Bind tab to escape (still able to insert using shift+tab)
" Normal mode
nnoremap <Tab> <Esc>
" Visual mode
vnoremap <Tab> <Esc>gV
" Operator mode
onoremap <Tab> <Esc>
" Insert mode
inoremap <Tab> <Esc>`^
" inoremap <Leader><Tab> <Tab>

