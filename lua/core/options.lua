local o = vim.opt

o.title = true
o.mouse = 'a'
o.number = true
o.relativenumber = true
o.hidden = true
o.clipboard = 'unnamedplus'
o.scrolloff=10
o.sidescrolloff = 8
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.expandtab = true
o.smartindent = true
o.smarttab = true
o.autoindent = true
o.cindent = true
o.joinspaces = false
o.incsearch = true
o.signcolumn = 'yes'
o.completeopt = { "menuone", "noselect" }
o.splitright = true
o.splitbelow = true
o.inccommand='split'
o.background = 'dark'
o.termguicolors = true

-- indent-blankline
o.list = true
o.listchars:append("space:⋅")

vim.g.tokyonight_style = "night"
vim.cmd [[ colorscheme tokyonight ]]

vim.cmd [[
  syntax enable
  set guicursor=
  set nohlsearch
  set noerrorbells
  set shortmess+=c
  filetype plugin on
  set updatetime=300
  set whichwrap+=<,>,[,],h,l
]]

-- indent-blankline config
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]


