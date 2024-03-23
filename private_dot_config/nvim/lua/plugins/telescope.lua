return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
  },
  opts = {
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
        },
      },
    },
  },
  keys = {
    { "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "[F]ind [H]elp" },
    { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "[F]ind [F]iles" },
    { "<leader>fw", "<cmd>Telescope grep_string<CR>", desc = "[F]ind [W]ord" },
    { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "[F]ind [G]rep" },
    { "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "[F]ind [B]uffers" },
  },
}
