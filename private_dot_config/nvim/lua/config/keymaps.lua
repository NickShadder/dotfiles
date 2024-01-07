-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
local map = vim.keymap.set

map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Indentation
map("v", "<Tab>", ">gv", { silent = true })
map("v", "<S-Tab>", "<gv", { silent = true })

