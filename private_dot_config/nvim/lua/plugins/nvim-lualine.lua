return {
  "nvim-lualine/lualine.nvim",
  { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
  opts = {
    options = {
      theme = "catppuccin",
      globalstatus = true,
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
    },
  },
}
