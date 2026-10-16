vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function() require('render-markdown').setup() end,
})
