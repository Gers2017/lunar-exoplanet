call plug#begin("~/.config/nvim/plugged")
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'feline-nvim/feline.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'mg979/vim-visual-multi'

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lua'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

call plug#end()

set timeoutlen=1100 "Time in milliseconds to wait for a mapped sequence to complete.
set encoding=UTF-8
set title
set clipboard+=unnamedplus
set completeopt=menu,menuone,noselect
set hidden
set inccommand=split
set splitbelow splitright  
set nohlsearch
set noerrorbells
set incsearch
set scrolloff=10
" numbers
set number
set relativenumber
" tabs
set mouse=a
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set shortmess+=c
set completeopt-=preview " For No Previews

syntax enable

let g:tokyonight_style = "night"
colorscheme tokyonight
set termguicolors

lua <<EOF
require("core.utils")
require("core.options")
require("core.keymaps")
require("plugins.lsp.cmp")
require("plugins.lsp.lspconfig")
require('feline').setup()
require('gitsigns').setup()
require("bufferline").setup({})
EOF
