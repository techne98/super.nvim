# Super

Super is a command picker extension for [Telescope](https://github.com/nvim-telescope/telescope.nvim).

Users can search for Neovim commands using natural language and execute them directly from the Telescope picker.

The aim of this plugin is:

1. To provide a different interface to executing commands, while keeping a
   keyboard-focused workflow
2. To help users learn the different Ex commands associated with desired
   actions

This plugin is still experimental, so expect breaking changes and/or funky
behaviour.

# Installation

This plugin requires you to have Telescope and its required dependencies installed.

Add the following code to your [Lazy](https://github.com/folke/lazy.nvim) plugin spec table:

```lua
{
  "techne98/super.nvim",
  config = false
}
```

# Using Super

You can open the command picker in command-line mode, for example with `:Telescope super`.

Example custom keybind:

```lua
vim.keymap.set('n', '<leader>p', require('telescope').extensions.super.super)
```

# Contributing

If you would like to add a new command, please open a new issue with your suggestedformat and description.

If everything is good, you can open up a PR and add it to the [commands.lua](https://github.com/techne98/super.nvim/blob/main/lua/super/commands.lua) file.

Please do the following when contributing:

1. Fork the project
2. Create a branch, e.g. git checkout -b my-new-feature
3. Commit some changes
4. Open a pull request

Thanks!
