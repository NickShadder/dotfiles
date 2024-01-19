-- Keymaps for better default experience
-- See `:help vim.keymap.set()`

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Map command silently
local maps = function(mode, key, command)
  vim.keymap.set(mode, key, command, { silent = true })
end

-- Unmap space because it is the <leader> key
maps({ "n", "v" }, "<Space>", "<nop>")

-- Indentation
maps("v", "<Tab>", ">gv")
maps("v", "<S-Tab>", "<gv")

-- Move highlighted lines while adjusting their indentation
maps("v", "J", ":m '>+1<CR>gv=gv")
maps("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor in place when joining lines
maps("n", "J", "mzJ`z")

-- Keep search terms in the middle
maps("n", "n", "nzzzv")
maps("n", "N", "Nzzzv")

-- Preserve copied text when pasting
maps("x", "<leader>p", [["_dP]])

-- Yank and delete into the system clipboard
maps("n", "<leader>Y", [["+Y]])
maps({ "n", "v" }, "<leader>y", [["+y]])
maps({ "n", "v" }, "<leader>d", [["+d]])

-- Unbind Q
maps("n", "Q", "<nop>")

-- Replace word under cursor
maps("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Split windows
maps("n", "<leader>-", "<cmd>split<cr>")
maps("n", "<leader>|", "<cmd>vsplit<cr>")

-- Autoformat
vim.keymap.set("n", "C-A-l", vim.lsp.buf.format)
