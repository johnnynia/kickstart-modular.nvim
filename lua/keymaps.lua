-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- vim: ts=2 sts=2 sw=2 et

-- General app and buffer handling.
vim.keymap.set('n', '<leader>w', ':w<CR>', { silent = true })
vim.keymap.set('n', '<leader>q', ':q<CR>', { silent = true })
vim.keymap.set('n', '<leader>aa', ':qall<CR>', { silent = true })
vim.keymap.set('n', '<leader>d', ':bd<CR>', { silent = true })

vim.keymap.set('n', '<leader>n', ':vs<CR>', { silent = true })

-- Search.
vim.keymap.set('n', '<leader><space>', ':noh<CR>', { noremap = true, silent = true })

-- NeoTree.
vim.keymap.set('n', '§', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>§', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })

-- Swiss keyboard.
vim.keymap.set('n', 'ü', '[', { silent = true })
vim.keymap.set('n', 'ä', ']', { silent = true })
vim.keymap.set('n', 'è', '{', { silent = true })
vim.keymap.set('n', 'à', '}', { silent = true })
