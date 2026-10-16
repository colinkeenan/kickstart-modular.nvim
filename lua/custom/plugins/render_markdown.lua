local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'MeanderingProgrammer/render-markdown.nvim' }

require('render-markdown').setup {
  -- Optional: tweak styles to your liking
  heading = {
    enabled = true,
    sign = true,
  },
  code = {
    enabled = true,
    sign = true,
  },
  bullet = {
    enabled = true,
  },
  checkbox = {
    enabled = true,
  },
}
