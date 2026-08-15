vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    local argc = vim.fn.argc()

    -- Case 1: no arguments → open Neo-tree at default directory
    if argc == 0 then
      require('neo-tree.command').execute {
        source = 'filesystem',
        position = 'left',
        reveal = false,
        focus = true,
        dir = '/home/colin/github',
      }
      return
    end

    -- Case 2: argument is a directory → open Neo-tree at that directory
    if argc == 1 then
      local arg = vim.fn.argv(0) --[[@as string]]
      if vim.fn.isdirectory(arg) == 1 then
        require('neo-tree.command').execute {
          source = 'filesystem',
          position = 'left',
          reveal = false,
          focus = true,
          dir = arg,
        }

        -- Close the useless empty buffer NeoVim opens by default
        vim.cmd 'bd'
      end
    end
  end,
})
