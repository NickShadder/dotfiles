return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    filters = {
      dotfiles = true,
    },
  },
  keys = {
    { "<A-x>", "<esc><cmd>NvimTreeFindFile<cr>",
      mode = { "n", "v", "i" },
      desc = "Navigate to file",
      silent = true,
    },
    { "<A-1>", "<cmd>NvimTreeToggle<cr>",
      mode = { "n", "v", "i" },
      desc = "Toggle file tree",
      silent = true,
    },
  },
}
