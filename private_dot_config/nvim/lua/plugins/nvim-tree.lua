return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = {
    filters = {
      dotfiles = true,
    },
  },
  keys = {
    { "<A-x>", "<esc><cmd>NvimTreeFindFile<cr>", 
      mode = {"n", "v", "i"}, 
      desc = "Navigate to file",
      silent = true,
    },
    { "<A-1>", "<cmd>NvimTreeToggle<cr>",
      mode = {"n", "v", "i"}, 
      desc = "Toggle file tree",
      silent = true,
    },
  },
}
