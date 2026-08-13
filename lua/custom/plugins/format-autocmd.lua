vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.md",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})

