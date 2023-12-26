local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = false })
end

-- Oil
map('n', '<leader>a', ":Oil<CR>")

-- Tools
map('n', '<leader>n', ':w<CR>')
map('n', '<leader>t', ':q<CR>')
map('i', '<C-h>', '<BS>')

-- G for go to
map('n', 'gD', '<C-]>') -- Go to the global definition
-- Folds for dvorak
map('n', 'zt', 'zj')
map('n', 'zn', 'zk')
-- Next and previous coincidences
map('n', 'l', 'n')
map('n', 'L', 'N')
-- Vim lsp functionalities
map('n', 'ff', ":lua vim.lsp.buf.format()<CR>")
map('n', '<leader>rn', ":lua vim.lsp.buf.rename()<CR>")
-- Quitar el resaltado
map('n', '?', ':nohlsearch<CR>')
--Splits
map('n', 'wn', '<C-w>k')
map('n', 'wt', '<C-w>j')
map('n', 'wh', '<C-w>h')
map('n', 'ws', '<C-w>l')
map('n', 'wc', '<C-w>c')

-- buffers
map('n', 'gs', ':bnext<CR>')
map('n', 'gh', ':bprevious<CR>')
map('n', 'gd', ':bdelete<CR>')

--Dvorak
--Rigth hand
map('n', 'e', 'i')
map('n', 'E', 'I')
map('v', 'e', 'i')
map('v', 'E', 'I')
map('n', 'i', '<C-r>')
map('n', 'I', '<C-r>')
--Left hand
map('n', 'H', 'b')
map('v', 'H', 'b')

map('n', 't', 'j')
map('n', 'T', '10j')
map('v', 't', 'j')
map('v', 'T', '10j')

map('n', 'n', 'k')
map('n', 'N', '10k')
map('v', 'n', 'k')
map('v', 'N', '10k')

map('n', 's', 'l')
map('n', 'S', 'w')
map('v', 's', 'l')
map('v', 'S', 'w')
