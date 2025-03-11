vim.g.mapleader = " "

-- neo-tree
vim.keymap.set('n', '<leader>e', ':Neotree left reveal toggle<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status toggle<CR>')

-- Cmp
    -- mapping = cmp.mapping.preset.insert({
    --     ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    --     ['<C-f>'] = cmp.mapping.scroll_docs(4),
    --     ['<C-Space>'] = cmp.mapping.complete(),
    --     ['<C-e>'] = cmp.mapping.abort(),
    --     ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    -- }),


-- LSP
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<leader>ld', ':lua vim.diagnostic.open_float()<CR>')
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>lD', ':lua vim.diagnostic.setloclist()<CR>')
-- А еще какие-то мапинги лежат в plugin/lsp.lua... Это нужно исправить!


-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


-- Navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Splits
vim.keymap.set('n', '|', ':vsplit<CR>')
vim.keymap.set('n', '\\', ':split<CR>')

-- Other
vim.keymap.set('n', '<leader>w', ':w<CR>')           -- Сохранение
-- vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
-- vim.keymap.set('n', '<leader>X', ':BufferLineCloseRight<CR>')
-- vim.keymap.set('n', '<leader>s', ':BufferLineSortByTabs<CR>')
vim.keymap.set('i', 'jj', '<Esc>')                   -- Выход в normal mode через jj
vim.keymap.set('i', '<A-i>', '<C-6>')                -- Переключение раскладки клавиатуры
vim.keymap.set('n', '<A-i>', 'a<C-6><Esc>')         -- Переключение раскладки клавиатуры
-- vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Tabs
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')

-- Terminal
vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<CR>')
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>')
vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical size=40<CR>')
