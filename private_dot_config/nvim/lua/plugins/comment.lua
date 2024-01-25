return {
  "numToStr/Comment.nvim",
  config = true,
  keys = {
    { "<C-_>", "<ESC>gcc", mode = { "n", "i" }, remap = true },
    { "<C-\\>", "<ESC>gbc", mode = { "n", "i" }, remap = true },
    { "<C-_>", "gc", mode = "v", remap = true },
    { "<C-\\>", "gb", mode = "v", remap = true },
  },
}
