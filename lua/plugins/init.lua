vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
  use 'kyazdani42/nvim-web-devicons'
  -- tokyo night theme
  use 'folke/tokyonight.nvim'
  -- vscode theme
  use 'Mofiqul/vscode.nvim'
  -- github theme
  use "projekt0n/github-nvim-theme"
  -- lualine
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true, theme = 'auto' } }
  -- plenary.nvim
  use 'nvim-lua/plenary.nvim'
  -- telescope
  use 'nvim-telescope/telescope.nvim'
  -- bufferline
  use { 'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons' }
  -- nvim-tree
  use {
    'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' }
  }
  -- gitsigns
  use 'lewis6991/gitsigns.nvim'
  -- commentary
  use 'tpope/vim-commentary'
  -- indent-blankline
  use 'lukas-reineke/indent-blankline.nvim'
  -- friendly snippets
  use 'rafamadriz/friendly-snippets'
  -- autopairs
  use 'windwp/nvim-autopairs'

  -- lsp
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
  }
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lua'

  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'nvim-treesitter/nvim-treesitter'
end)

-- require('github-theme').setup({ theme_style = "dark_default" })
require 'plugins.config.lualine'
require 'plugins.config.bufferline'
require('luasnip.loaders.from_vscode').lazy_load()
require 'plugins.config.nvim-tree'
require 'plugins.config.indent-blankline'
require('plugins.config.autopairs')
require('gitsigns').setup()
require 'plugins.config.lsp.cmp'
require 'plugins.config.lsp.lspconfig'
require 'plugins.config.lsp.tresitter'
