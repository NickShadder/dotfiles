local opt = vim.opt

-- Tab / Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Appearance
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.colorcolumn = "100"
opt.signcolumn = "yes"
opt.scrolloff = 10
opt.completeopt = "menu,noinsert,noselect"

-- Behavior
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
vim.o.updatetime = 300
vim.o.timeoutlen = 500
