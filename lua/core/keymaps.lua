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
  map('n', '<C-z>', 'u')
  map('n', 'Y', 'Vy')
  map('n', '<C-x>', 'dd')
  map('n', '0', '^')
  map('n', '<home>', '^')
  map('n', '<end>', '$')
  map('n', '<C-Right>', 'w')
  map('n', '<C-Left>', 'b')
 
  -- Telescope
  map('n', '<C-p>', ':Telescope find_files<cr>')
  map('n', '<leader>tg', ':Telescope live_grep<cr>')
 
  -- NvimTree
  map('n', '<C-b>', ':NvimTreeToggle<cr>')
  map('n', '<leader>nc', ':NvimTreeClose<cr>')
  map('n', '<leader>nf', ':NvimTreeFocus<cr>')
  map('n', '<C-f>', ':NvimTreeFocus<cr>')
 
  -- Window navigation
  map('n', '<leader>wh', '<C-w>h')
  map('n', '<leader>wj', '<C-w>j')
  map('n', '<leader>wk', '<C-w>k')
  map('n', '<leader>wl', '<C-w>l')
  map('n', '<leader>ww', '<C-w>w')
 
  -- Buffers
  map('n', '<A-Right>', '<cmd>bn<cr>')
  map('n', '<A-Left>', '<cmd>bp<cr>')
  map('n', '<A-c>', '<cmd>bd<cr>')
 
  -- Resize with arrows
  map('n', '<S-Up>', ':resize -2<cr>')
  map('n', '<S-Down>', ':resize +2<cr>')
  map('n', '<S-Left>', ':vertical resize -2<cr>')
  map('n', '<S-Right>', ':vertical resize +2<cr>')
 
  -- Move text up and down normal mode
  map('n', '<A-Up>', '<Esc>:m .-2<cr>==gn')
  map('n', '<A-Down>', '<Esc>:m .+1<cr>==gn')


 -- Move text up and down edit mode (I)
  map('i', '<A-Up>', '<Esc>:m .-2<cr>==gi')
  map('i', '<A-Down>', '<Esc>:m .+1<cr>==gi')
  -- Stay in indent mode
  map('v', '<', '<gv')
  map('v', '>', '>gv')
 
  -- Move text up and down visual mode
  map('v', '<A-Up>', ':m .-2<cr>==gv')
  map('v', '<A-Down>', ':m .+1<cr>==gv')
  map('v', 'p', '"_dP')
 
  -- Move text up and down visual block mode
  map("x", "<A-Up>", ":move '<-2<cr>gv-gv")
  map("x", "<A-Down>", ":move '>+1<cr>gv-gv")

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
