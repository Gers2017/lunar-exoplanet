nnoremap Y Vy
" change inner word
nnoremap cw ciw
" yank inner word
nnoremap yw yiw
"delete inner word
nnoremap dw diw

" keep cursor centered while joining lines
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

"undo breakpoints
inoremap , ,<c-g>u
inoremap ; ;<c-g>u
inoremap . .<c-g>u
inoremap ? ?<c-g>u
inoremap ! !<c-g>u

" Telescope
nnoremap <C-p> <cmd>Telescope find_files<CR>
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>tg <cmd>Telescope live_grep<CR>
nnoremap <leader>tb <cmd>Telescope buffers<CR>
nnoremap <leader>th <cmd>Telescope help_tags<CR>

" Buffers
nnoremap <A-Right> <cmd>bn<CR>
nnoremap <A-Left> <cmd>bp<CR>
nnoremap <A-c> <cmd>bd<CR>

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Position panels
nnoremap <A-H> <C-w>H
nnoremap <A-J> <C-w>J
nnoremap <A-K> <C-w>K
nnoremap <A-L> <C-w>L
nnoremap <A-r> <C-w>x

" Resize with arrows
nnoremap <C-Up> <cmd>resize -2<CR>
nnoremap <C-Down> <cmd>resize +2<CR>
nnoremap <C-Left> <cmd>vertical resize -2<CR>
nnoremap <C-Right> <cmd>vertical resize +2<CR>
" Move text
nnoremap <A-j> <Esc>:m .+1<CR>==
nnoremap <A-k> <Esc>:m .-2<CR>==

" Visual
vnoremap < <gv
vnoremap > >gv
" Move text
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"vnoremap <A-j> :m .+1<CR>==
"vnoremap <A-k> :m .-2<CR>==

" Visual Block
" Move text
xnoremap J <cmd>move '>+1<CR>gv-gv
xnoremap K <cmd>move '<-2<CR>gv-gv
xnoremap <A-j> <cmd>move '>+1<CR>gv-gv
xnoremap <A-k> <cmd>move '<-2<CR>gv-gv

nnoremap <leader>gp <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <leader>gn <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>.  <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap gd         <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <leader>f  <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <leader>h  <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <F2>       <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap gr         <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <space>s   <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap gi         <cmd>lua vim.lsp.buf.implementation()<CR>

nnoremap <C-b> :NvimTreeToggle<CR>
nnoremap <leader>e :NvimTreeFocus<CR>

