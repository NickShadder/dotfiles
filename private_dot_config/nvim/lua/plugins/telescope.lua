local config = function()
  require("telescope").setup({
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
        },
      },
    },
  })
end

local keymap = vim.keymap
return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = config,
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "[F]ind [F]iles" },
    { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "[F]ind [G]rep" },
    { "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "[F]ind [B]uffers" },
  },
}
