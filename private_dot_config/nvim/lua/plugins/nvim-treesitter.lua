local config = function()
  require("nvim-treesitter.configs").setup {
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
        node_incremental = "v",
        node_decremental = "V",
      },
    },
  }
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
