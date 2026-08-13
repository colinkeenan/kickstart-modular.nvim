local conform = require("conform")

conform.setup({
  formatters = {
    markdownlint_fix = {
      command = "markdownlint",
      args = { "--fix", "$FILENAME" },
      stdin = false,
    },
  },

  formatters_by_ft = {
    markdown = { "prettier", "markdownlint_fix" },
  },

  format_on_save = {
    timeout_ms = 2000,
    lsp_fallback = true,
  },
})

