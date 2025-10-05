# opencode-theme.nvim

A Neovim theme based on the OpenCode color palette with light and dark variants.

## Features

- Light and dark variants
- Extensive syntax highlighting
- Support for popular plugins (Telescope, NvimTree, WhichKey, nvim-cmp, GitSigns)
- Configurable styles and transparency
- Tree-sitter support
- Terminal colors

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "your-username/opencode-theme.nvim",
  config = function()
    require("opencode-theme").setup()
  end,
}
```

## Usage

```lua
-- Basic setup
require("opencode-theme").setup()

-- Load the colorscheme
vim.cmd("colorscheme opencode")
```

## Configuration

```lua
require("opencode-theme").setup({
  style = "dark", -- "dark" or "light"
  transparent = false, -- Enable transparent background
  terminal_colors = true, -- Apply colors to terminal
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
    types = {},
  },
  integrations = {
    telescope = true,
    nvimtree = true,
    which_key = true,
    cmp = true,
    gitsigns = true,
    treesitter = true,
  },
  highlight_overrides = {
    -- Custom highlight overrides
    Normal = { fg = "#ffffff" },
  },
})
```

### Options

- `style`: Theme style (`"dark"` or `"light"`)
- `transparent`: Enable transparent background
- `terminal_colors`: Apply colors to the integrated terminal
- `styles`: Style configurations for different syntax elements
- `integrations`: Enable/disable plugin integrations
- `highlight_overrides`: Custom highlight group overrides

## Switching Themes

You can switch between light and dark themes:

```lua
-- Switch to dark theme
require("opencode-theme").config.style = "dark"
require("opencode-theme").load()

-- Switch to light theme
require("opencode-theme").config.style = "light"
require("opencode-theme").load()
```

## Color Palette

The theme is based on the OpenCode color palette with carefully selected colors for optimal readability and visual comfort.

### Dark Theme
- Background: `#0a0a0a`
- Primary: `#fab283`
- Secondary: `#5c9cf5`
- Accent: `#9d7cd8`
- Text: `#eeeeee`

### Light Theme
- Background: `#ffffff`
- Primary: `#3b7dd8`
- Secondary: `#7b5bb6`
- Accent: `#d68c27`
- Text: `#1a1a1a`

## Supported Plugins

- Telescope.nvim
- NvimTree
- WhichKey.nvim
- nvim-cmp
- GitSigns.nvim
- Tree-sitter

## License

MIT License