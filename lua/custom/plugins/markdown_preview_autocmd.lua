vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    -- Load the plugin
    vim.cmd 'packadd markdown-preview.nvim'

    -- Delay the preview until after the buffer is fully initialized
    vim.defer_fn(function()
      -- Only run if the command exists
      if vim.fn.exists ':MarkdownPreview' == 2 then vim.cmd 'MarkdownPreview' end
    end, 100) -- 100ms delay
  end,
})
