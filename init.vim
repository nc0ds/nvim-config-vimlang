:set number
:set relativenumber
:set smartindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set cursorline
:set cursorcolumn

set nocompatible
set path+=**
set wildmenu
set wildignore+=**/node_modules/**
set guicursor+=i:block
set encoding=UTF-8
set nohlsearch
set noshowmode

syntax enable
filetype plugin on
filetype plugin indent on
filetype indent on

call plug#begin()

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope', { 'branch': '0.1.x' }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'mattn/emmet-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'tpope/vim-commentary'

" Themes
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'EdenEast/nightfox.nvim'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/everforest'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

call plug#end()

"Theme config
set termguicolors

let g:sonokai_style = 'atlantis'
let g:sonokai_better_performance = 1

colorscheme sonokai

" Plugins configs

" Telescope
:lua require('telescope').setup{ defaults = { file_ignore_patterns = { "node_modules" } } }

" Emmet
let g:user_emmet_leader_key = '<C-a>'

" Lightline
let g:lightline = {
    \ 'colorscheme': 'powerline',
    \ 'active': {
    \   'left': [
    \               ['mode', 'paste'],
    \               ['filename', 'readonly', 'gitbranch', 'modified']
    \           ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'gitbranch#name'
    \ }
    \ }

" Custom commands
command CBO silent! execute "%bd|e#|bd#"

" Keybindings remap

let mapleader = " "

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>ef <cmd>Explore<cr>

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<cr>"
inoremap <silent><expr> <c-space> coc#refresh()
