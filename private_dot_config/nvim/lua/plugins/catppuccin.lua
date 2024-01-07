return { "catppuccin/nvim", 
	name = "catppuccin",
	priority = 1000,
	opt = {
    integrations = {
      noice = true,
      which_key = true,
      treesitter = true,
      nvimtree = true,
      telescope = {
        enabled = true,
        -- style = "nvchad"
      },
      indent_blankline = {
        enabled = true,
        scope_color = "lavender",
        colored_indent_levels = false,
      },
      illuminate = {
        enabled = true,
        lsp = false
      },
    },
  }
}
