call plug#begin("~/.config/nvim/plugged")
Plug 'morhetz/gruvbox'
Plug'folke/tokyonight.nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'feline-nvim/feline.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'mg979/vim-visual-multi' " :help visual-multi
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-tree.lua'

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

set encoding=UTF-8
set title
set number
set clipboard+=unnamedplus
set completeopt=menu,menuone,noselect
set mouse=a
set tabstop=4
set smarttab
set softtabstop=4
set shiftwidth=4
set smartindent
set splitright splitbelow 
set inccommand=split
set ignorecase
set smartcase
set noerrorbells
set incsearch
set hidden
set scrolloff=10
set shortmess+=c
set completeopt-=preview " For no previews
set iskeyword+=-
set background=dark
set termguicolors

let mapleader = " "
syntax enable

let g:tokyonight_style = "night"
colorscheme tokyonight

" Remaps
source ~/.config/nvim/src/remaps.vim

lua <<EOF
require('core.utils')
-- require('core.options')
-- require('core.keymaps')
require('plugins.lsp.cmp')
require('plugins.lsp.lspconfig')
require('plugins.nvimtree')
require('feline').setup()
require('gitsigns').setup()
require('bufferline').setup({})
local ts = require 'nvim-treesitter.configs'
ts.setup {ensure_installed = { 'lua', 'rust', 'typescript', 'python' } , highlight = {enable = true}}
EOF
