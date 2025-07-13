return {
  "stevearc/conform.nvim",
  event = "BufWritePre",
  opts = {
    notify_on_error = true,
    format_on_save = function(bufnr)
      -- Disable "format_on_save lsp_fallback" for languages that don't
      -- have a well standardized coding style. You can add additional
      -- languages here or re-enable it for the disabled ones.
      local disable_filetypes = { c = true, cpp = true }
      return {
        timeout_ms = 500,
        lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
      }
    end,
    formatters_by_ft = {
      lua = { "stylua" },
      rust = { "rustfmt" },
      -- Conform will run multiple formatters sequentially
      python = { "isort", "black" },
      go = { "goimports", "gofmt" },
      -- You can customize some of the format options for the filetype (:help conform.format)
      -- Conform will run the first available formatter
      javascript = { "prettierd", "prettier", stop_after_first = true },
    },
  },
  keys = {
    { "<leader>cf", function()
      require("conform").format({ lsp_format = "fallback" })
    end, desc = "[C]ode [F]ormat",
    },
  }
}
