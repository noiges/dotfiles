set nocompatible

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
  execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')
Plug 'christoomey/vim-tmux-navigator'
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'thoughtbot/vim-rspec'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

filetype plugin indent on

" General
set nocompatible
set noswapfile
set nobackup
set encoding=utf-8
set listchars=tab:▸\ ,eol:¬
set anti
set hlsearch
set incsearch
set nowrap
set number
set list
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set splitbelow
set splitright
set showcmd
set wildignore+=*~,*/log/*.log,*/tmp/*,*/coverage/*.html,*/.sass-cache/*,public/system/*,public/uploads/*,*/_site/*,*/build/*,*.jpg,*.jpeg,*.gif,*.png,*.pdf,*.mp3,*/node_modules/*,*/vendor/**,*/bin/**
set belloff=all

" One Dark
syntax on
colorscheme onedark
let g:onedark_termcolors=16

" Key mappings
let mapleader = ","
nmap <C-h> <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l
nmap - :Explore<CR>
map ,, <C-^>
nmap :Vex :Vex!

" Fzf
silent! map <unique> <leader>f :GFiles<CR>
silent! map <unique> <leader>F :GFiles?<CR>
silent! map <unique> <leader>b :Buffers<CR>
silent! map <unique> <leader>l :Lines<CR>
silent! map <unique> <leader>h :Helptags<CR>
silent! map <unique> <leader>g :Ag<CR>

" Gist
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1

" Rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "!bin/rspec {spec}"

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Custom statusline
set statusline=\ %t\ %=%l:%c\ %y\ %m
set laststatus=2

" Enable mouse mode for resizing panes
set mouse=a

autocmd QuickFixCmdPost *grep* cwindow

" Strip whitespace on save without confirmation
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm = 0

" Fast escape from visual mode
set timeoutlen=1000 ttimeoutlen=0

" Turn-on jsx highlighting for non-jsx files
let g:jsx_ext_required = 0

let g:onedark_termcolors=16
