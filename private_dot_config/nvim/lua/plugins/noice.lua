return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  opts = {
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    routes = {
      {
        filter = {
          event = "msg_show",
          any = {
            { find = "%d+L, %d+B" },
            { find = "; after #%d+" },
            { find = "; before #%d+" },
          },
        },
        view = "mini",
      },
    },
    presets = {
      command_palette = true,
    },
  },
  keys = {
    { "<leader>nlm", function() require("noice").cmd("last") end, desc = "[N]oice [L]ast [M]essage" },
    { "<leader>nh", function() require("noice").cmd("history") end, desc = "[N]oice [H]istory" },
    { "<leader>na", function() require("noice").cmd("all") end, desc = "[N]oice [A]ll" },
    { "<leader>nd", function() require("noice").cmd("dismiss") end, desc = "[N]oice [D]ismiss All" },
    { "<c-f>", function()
      if not require("noice.lsp").scroll(4) then
        return "<c-f>"
      end
    end, silent = true, expr = true, desc = "Scroll forward", mode = { "i", "n", "s" } },
    { "<c-b>", function()
      if not require("noice.lsp").scroll(-4) then
        return "<c-b>"
      end
    end, silent = true, expr = true, desc = "Scroll backward", mode = { "i", "n", "s" } },
  },
}
