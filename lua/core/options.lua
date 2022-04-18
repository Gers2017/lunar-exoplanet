local options = {
    title = true,
    mouse = 'a',
    number = true,
    relativenumber = true,
    scrolloff = 8,
    completeopt = {'menu', 'menuone', 'noselect'},
    hidden = true,
    clipboard = 'unnamedplus',
    splitright = true,
    splitbelow = true,
    sidescrolloff = 8,
    tabstop = 4,
    expandtab = true,
    softtabstop = 4,
    shiftwidth = 2,
    smarttab = true,
    autoindent = true,
    smartindent = true,
    joinspaces = false,
    termguicolors = true,
    nohlsearch = true,
    background = 'dark',
}

local o = vim.opt

for k,v in pairs(options) do
    o[k] = v
end




