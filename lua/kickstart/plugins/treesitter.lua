-- Replaced original kickstart code with this provided by Copilot because
-- the original code wouldn't load any additional languages that I added.
local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
  {
    src = gh 'nvim-treesitter/nvim-treesitter',
    version = 'main',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = {
          'bash',
          'c',
          'diff',
          'html',
          'http',
          'css',
          'lua',
          'luadoc',
          'markdown',
          'markdown_inline',
          'query',
          'typescript',
          'javascript',
          'json',
          'tsx',
          'vim',
          'vimdoc',
        },
        highlight = { enable = true },
      }
    end,
  },
}
