" infect my vim with usefull plugins
" from ~/.vim/bundle
call pathogen#infect()

set nocompatible

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Disable all bells
set noerrorbells novisualbell t_vb=

" Remove GUI
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar

" Turn on that syntax highlighting
syntax on

" Hidden buffers
set hidden

" Cool autocomplete
set wildmenu

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Set the search scan to wrap around the file
set wrapscan

" Set the forward slash to be the slash of note.  Backslashes suck
" This is really only applicable to Windows but I like to have a vimrc
" that works no matter what OS I'm currently on
set shellslash

" Make command line two lines high
set ch=2

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" See :help 'cpoptions' for these ones.  'cpoptions' has a huge
" set of possible options
set cpoptions=ces$

" Set the status line the way I like it
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]

" tell Vim to always put a status line in, even if there is only one
" window
set laststatus=2

" Hide the mouse pointer while typing
set mousehide

" This is the timeout used while waiting for user input on a
" multi-keyed macro or while just sitting and waiting for another
" key to be pressed measured in milliseconds.
"
" i.e. for the ",d" command, there is a "timeoutlen" wait
"      period between the "," key and the "d" key.  If the
"      "d" key isn't pressed before the timeout expires,
"      one of two things happens: The "," command is executed
"      if there is one (which there isn't) or the command aborts.
"
" The idea here is that if you have two commands, say ",dv" and
" ",d" that it will take 'timeoutlen' milliseconds to recognize
" that you're going for ",d" instead of ",dv"
"
" In general you should endeavour to avoid that type of
" situation because waiting 'timeoutlen' milliseconds is
" like an eternity.
set timeoutlen=500

" Keep some stuff in the history
set history=100

" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" When the page starts to scroll, keep the cursor 8 lines from
" the top and 8 lines from the bottom
set scrolloff=8

" Allow the cursor to go in to "invalid" places
set virtualedit=all

" For how *I* code these are the best types of settings for
" completion but I get rid of some neat things that you might
" like
set complete=.,w,b,t

" Incrementally match the search.  I orignally hated this
" but someone forced me to live with it for a while and told
" me that I would grow to love it after getting used to it...
" turns out he was right :)
set incsearch

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048


"
" Bindings
" 

" Some C/C++ stuff
nmap <leader>cc :<C-U>!make %:r && ./%:r<CR>
nmap <leader>cl :<C-U>!rm -f ./%:r<CR>

" Save as root
nmap <leader>wr :w !sudo tee %

" CtrlP
set wildignore+=*.swp,*.zip,*.exe,*.pyc,.git\*,.idea\*
let g:ctrlp_root_markers = ['.realsync']

"
" Maps
"

" Find and go-to. Mnemonics \find<what>
nmap <leader>fp  :CtrlP<CR>
nmap <leader>fsf :CtrlPCurFile<CR>
nmap <leader>fb  :CtrlPBuffer<CR>
nmap <leader>ft  :CtrlPTag<CR>
nmap <leader>fr  :CtrlPMRUFiles<CR>

