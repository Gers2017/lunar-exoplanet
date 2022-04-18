local default_opts = { noremap = true, silent = true }
local keymap = function(mode, key, cmd, opts)
    vim.api.nvim_set_keymap(mode, key, cmd, opts or default_opts)
end

-- keymap("", "<Space>", "<Nop>")
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

-- Normal --
-- User
keymap("n", "<C-l>", "V")
keymap("n", "Y", "Vy")

-- Telescope
keymap("n", "<C-p>", "<cmd>Telescope find_files<CR>")
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- Buffers
keymap('n', '<A-Right>', '<cmd>bn<CR>')
keymap('n', '<A-Left>', '<cmd>bp<CR>')
keymap('n', '<A-c>', '<cmd>bd<CR>')

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>")
keymap("n", "<C-Down>", ":resize +2<CR>")
keymap("n", "<C-Left>", ":vertical resize -2<CR>")
keymap("n", "<C-Right>", ":vertical resize +2<CR>")

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi")
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi")

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==")
keymap("v", "<A-k>", ":m .-2<CR>==")
keymap("v", "p", '"_dP')

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv")
keymap("x", "K", ":move '<-2<CR>gv-gv")
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv")
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv")

keymap('n', '<space>,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
keymap('n', '<space>;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
keymap('n', '<space>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
keymap('n', '<space>h', '<cmd>lua vim.lsp.buf.hover()<CR>')
keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>')
keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
keymap('n', '<space>s', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')

