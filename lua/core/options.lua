local o = vim.opt

o.title = true
o.mouse = 'a'
o.number = true
o.relativenumber = true
o.hidden = true
o.clipboard = 'unnamedplus'
o.scrolloff=10
o.sidescrolloff = 8
o.tabstop = 2
o.expandtab = true
o.shiftwidth = 2
o.softtabstop = 2
o.smarttab = true
o.autoindent = true
o.joinspaces = false
o.completeopt = { "menuone", "noselect" }
o.splitright = true
o.splitbelow = true
o.termguicolors = true
o.inccommand='split'
o.background = 'dark'

vim.g.tokyonight_style = "night"
vim.cmd [[ colorscheme tokyonight ]]

vim.cmd [[
  syntax enable
  set shortmess+=c
  filetype plugin on
  set updatetime=300
  set whichwrap+=<,>,[,],h,l
]]


