local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
  gh 'kylechui/nvim-surround',
}
require('nvim-surround').setup {
  surrounds = {
    m = {
      add = { '```\n', '\n```' },
      label = 'Markdown code fence',
    },
  },
}
