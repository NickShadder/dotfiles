local config = function()
  require("nvim-treesitter").setup({
    ensure_installed = { "c", "cpp", "java", "kotlin", "lua", "python", "rust", "vimdoc", "vim", "bash" },
    auto_install = true,
    indent = { 
      enable = true,
    },
    highlight = { 
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = '<C-space>',
        node_incremental = '<C-space>',
        scope_incremental = '<C-s>',
        node_decremental = '<A-space>',
      },
    },
  })
end

return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  build = ":TSUpdate",
  config = config,
}
