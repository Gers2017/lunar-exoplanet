local default_opts = { noremap = true, silent = true }
local function map(mode, key, cmd, opts)
  vim.api.nvim_set_keymap(mode, key, cmd, opts or default_opts)
end

map('', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local M = {}

M.setup = function ()
  -- User
  map('n', 'Y', 'Vy')
  
  -- Telescope
  map('n', '<C-p>', ':Telescope find_files<cr>')
  map('n', '<ldeader>tg', ':Telescope live_grep<cr>')
  
  -- NvimTree
  map('n', '<C-b>', ':NvimTreeToggle<cr>')
  map('n', '<leader>nc', ':NvimTreeClose<cr>')
  map('n', '<leader>nf', ':NvimTreeFocus<cr>')
  map('n', '<C-f>', ':NvimTreeFocus<cr>')
  
  -- Window navigation
  map('n', '<C-h>', '<C-w>h')
  map('n', '<C-j>', '<C-w>j')
  map('n', '<C-k>', '<C-w>k')
  map('n', '<C-l>', '<C-w>l')
  
  -- Buffers
  map('n', '<A-Right>', '<cmd>bn<cr>')
  map('n', '<A-Left>', '<cmd>bp<cr>')
  map('n', '<A-c>', '<cmd>bd<cr>')
  
  -- Resize with arrows
  map('n', '<C-Up>', ':resize -2<cr>')
  map('n', '<C-Down>', ':resize +2<cr>')
  map('n', '<C-Left>', ':vertical resize -2<cr>')
  map('n', '<C-Right>', ':vertical resize +2<cr>')
  
  -- Move text up and down normal mode
  map('n', '<A-j>', '<Esc>:m .+1<cr>==gi')
  map('n', '<A-k>', '<Esc>:m .-2<cr>==gi')
  
  -- Stay in indent mode
  map('v', '<', '<gv')
  map('v', '>', '>gv')
  
  -- Move text up and down visual mode
  map('v', '<A-j>', ':m .+1<cr>==')
  map('v', '<A-k>', ':m .-2<cr>==')
  map('v', 'p', '"_dP')
  
  -- Move text up and down visual block mode
  map("x", "J", ":move '>+1<cr>gv-gv")
  map("x", "K", ":move '<-2<cr>gv-gv")
  map("x", "<A-j>", ":move '>+1<cr>gv-gv")
  map("x", "<A-k>", ":move '<-2<cr>gv-gv")
end

M.lspconfig = function ()
  map('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')
  map('n', '<F3>', '<cmd>lua vim.lsp.buf.formatting()<cr>')
  map('n', '<F12>', '<cmd>lua vim.lsp.buf.definition()<cr>')

  map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
  map('n', 'gd', '<cmd>lua vim.lsp.buf.declaration()<cr>')
  map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
  map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
  map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
  map('n', 'gp', '<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>')
  map('n', 'gn', '<cmd>lua vim.lsp.diagnostic.goto_next()<cr>')
  map('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>')
  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
end

return M
