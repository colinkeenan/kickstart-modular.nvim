--[[
    If you don't know anything about Lua, I recommend taking some time to read through
    a guide. One possible example which will only take 10-15 minutes:
      - https://learnxinyminutes.com/docs/lua/

    After understanding a bit more about Lua, you can use `:help lua-guide` as a
    reference for how Neovim integrates Lua.
    - :help lua-guide
    - (or HTML version): https://neovim.io/doc/user/lua-guide.html

Kickstart Guide:

  TODO: The very first thing you should do is to run the command `:Tutor` in Neovim.

  Once you've completed that, you can continue working through **AND READING** the rest
  of the kickstart init.lua.

  Next, run AND READ `:help`.
    MOST IMPORTANTLY, we provide a keymap "<space>sh" to [s]earch the [h]elp documentation,
    which is very useful when you're not exactly sure of what you're looking for.

  I have left several `:help X` comments throughout the lua config files (./init.lua,
    ./lua/keymaps.lua, ./lua/options.lua, ./lua/pack.lua, ./lua/plugins.lua)
    These are hints about where to find more information about the relevant settings,
    plugins or Neovim features used in Kickstart.

   NOTE: Look for lines like this

    Throughout these files. These are for you, the reader, to help you understand what is happening.

I hope you enjoy your Neovim journey,
- TJ

--]]

require 'options'
require 'keymaps'
require 'pack'
require 'plugins'

-- In order to add plugins other than included with the Kickstart
require 'custom.plugins'

-- Commented tokyonight from ./lua/plugins.lua and just set one of the installed cholorschemes here
-- See built-in/already installed colorschemes with :Telescope colorscheme
-- So far like: murphy, lunaperche, desert
vim.cmd.colorscheme("murphy")

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
