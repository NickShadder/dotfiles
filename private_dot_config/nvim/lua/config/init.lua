require("config.options")
require("config.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local lazyopts = {
	defaults = {
		lazy = true,
	},
	install = {
    colorscheme = { "catppuccin" },
	},
	change_detection = {
    		notify = true, -- get a notification when changes are found
  },
	performance = {
	  rtp = {
		  disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrw",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
	  },
  },
}

require("lazy").setup("plugins", lazyopts)

vim.cmd.colorscheme "catppuccin"
