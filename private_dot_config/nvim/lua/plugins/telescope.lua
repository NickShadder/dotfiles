return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { -- If encountering errors, see telescope-fzf-native README for installation instructions
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      -- `cond` is a condition used to determine whether this plugin should be
      -- installed and loaded.
      cond = function()
        return vim.fn.executable "make" == 1
      end,
    },
    "nvim-telescope/telescope-ui-select.nvim",
    { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
  },
  config = function()
    require("telescope").setup {
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = "move_selection_next",
            ["<C-k>"] = "move_selection_previous",
          },
        },
      },
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown()
        }
      }
    }

    pcall(require("telescope").load_extension, "fzf")
    pcall(require("telescope").load_extension, "ui-select")
  end,
  keys = {
    { "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "[F]ind [H]elp" },
    { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "[F]ind [F]iles" },
    { "<leader>fw", "<cmd>Telescope grep_string<CR>", desc = "[F]ind [W]ord" },
    { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "[F]ind [G]rep" },
    { "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "[F]ind [B]uffers" },
  },
}
