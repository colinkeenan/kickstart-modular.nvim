local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'iamcco/markdown-preview.nvim' }

vim.g.mkdp_browser = 'msedge'

vim.cmd [[
function! OpenEdge(url)
  call jobstart(['microsoft-edge-stable', '--new-window', a:url])
endfunction
]]

vim.g.mkdp_browserfunc = 'OpenEdge'

vim.g.mkdp_auto_close = 1
vim.g.mkdp_theme = 'dark'
