return {
  "numToStr/Comment.nvim",
  opts = {
    -- Move the cursor down one line after (un)commenting
    -- if we only touched one line. Like in IntelliJ
    post_hook = function(ctx)
      if ctx.range.srow == ctx.range.erow then
        vim.cmd("norm! j")
      end
    end,
  },
  keys = {
    { "<C-_>", "<ESC>gcc", mode = { "n", "i" }, remap = true },
    { "<C-\\>", "<ESC>gbc", mode = { "n", "i" }, remap = true },
    { "<C-_>", "gc", mode = "v", remap = true },
    { "<C-\\>", "gb", mode = "v", remap = true },
  },
}
