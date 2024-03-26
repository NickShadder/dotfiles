return {
  "lewis6991/gitsigns.nvim",
  lazy = false,
  opts = {
    signs = {
      add = { text = "+" },
    },
  },
  config = function()
    require("gitsigns").setup {
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      map('n', '<leader>gsh', gs.preview_hunk)
      map('n', '<leader>gtd', gs.toggle_deleted)
    end
    }
  end,

}
