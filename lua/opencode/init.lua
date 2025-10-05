local M = {}

local default_config = {
  style = "dark",
  transparent = false,
  terminal_colors = true,
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
    snacks = true,
  },
  highlight_overrides = {},
}

M.config = default_config

local function apply_highlights(groups)
  for group, opts in pairs(groups) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

local function apply_terminal_colors(colors)
  if not M.config.terminal_colors then
    return
  end
  
  vim.g.terminal_color_0 = colors.background
  vim.g.terminal_color_1 = colors.error
  vim.g.terminal_color_2 = colors.success
  vim.g.terminal_color_3 = colors.warning
  vim.g.terminal_color_4 = colors.info
  vim.g.terminal_color_5 = colors.accent
  vim.g.terminal_color_6 = colors.info
  vim.g.terminal_color_7 = colors.text
  vim.g.terminal_color_8 = colors.textMuted
  vim.g.terminal_color_9 = colors.error
  vim.g.terminal_color_10 = colors.success
  vim.g.terminal_color_11 = colors.warning
  vim.g.terminal_color_12 = colors.info
  vim.g.terminal_color_13 = colors.accent
  vim.g.terminal_color_14 = colors.info
  vim.g.terminal_color_15 = colors.text
end

local function apply_style_overrides(groups)
  local styles = M.config.styles
  
  if styles.comments and groups.Comment then
    groups.Comment.italic = styles.comments.italic
  end
  
  if styles.keywords then
    for group, _ in pairs(groups) do
      if group:match("keyword") or group:match("@keyword") then
        if styles.keywords.bold then
          groups[group].bold = true
        end
      end
    end
  end
  
  if styles.functions then
    for group, _ in pairs(groups) do
      if group:match("function") or group:match("@function") then
        for style, value in pairs(styles.functions) do
          groups[group][style] = value
        end
      end
    end
  end
  
  if styles.variables then
    for group, _ in pairs(groups) do
      if group:match("variable") or group:match("@variable") then
        for style, value in pairs(styles.variables) do
          groups[group][style] = value
        end
      end
    end
  end
  
  if styles.types then
    for group, _ in pairs(groups) do
      if group:match("type") or group:match("@type") then
        for style, value in pairs(styles.types) do
          groups[group][style] = value
        end
      end
    end
  end
end

local function apply_transparency(groups)
  if not M.config.transparent then
    return
  end
  
  for group, opts in pairs(groups) do
    if opts.bg then
      opts.bg = "NONE"
    end
  end
  
  groups.Normal.bg = "NONE"
  groups.NormalFloat.bg = "NONE"
  groups.NormalNC.bg = "NONE"
  groups.SignColumn.bg = "NONE"
  groups.StatusLine.bg = "NONE"
  groups.StatusLineNC.bg = "NONE"
  groups.TabLine.bg = "NONE"
  groups.TabLineFill.bg = "NONE"
  groups.WinSeparator.bg = "NONE"
  groups.VertSplit.bg = "NONE"
  groups.FoldColumn.bg = "NONE"
  groups.NvimTreeNormal.bg = "NONE"
  groups.NvimTreeNormalNC.bg = "NONE"
  groups.TelescopeNormal.bg = "NONE"
  groups.TelescopeBorder.bg = "NONE"
  groups.TelescopeTitle.bg = "NONE"
  groups.TelescopePreviewNormal.bg = "NONE"
  groups.TelescopePreviewBorder.bg = "NONE"
  groups.TelescopePreviewTitle.bg = "NONE"
  groups.TelescopePromptNormal.bg = "NONE"
  groups.TelescopePromptBorder.bg = "NONE"
  groups.TelescopePromptTitle.bg = "NONE"
  groups.WhichKeyFloat.bg = "NONE"
  groups.SnacksNotifierDebug.bg = "NONE"
  groups.SnacksNotifierBorderDebug.bg = "NONE"
  groups.SnacksNotifierError.bg = "NONE"
  groups.SnacksNotifierBorderError.bg = "NONE"
  groups.SnacksNotifierInfo.bg = "NONE"
  groups.SnacksNotifierBorderInfo.bg = "NONE"
  groups.SnacksNotifierTrace.bg = "NONE"
  groups.SnacksNotifierBorderTrace.bg = "NONE"
  groups.SnacksNotifierWarn.bg = "NONE"
  groups.SnacksNotifierBorderWarn.bg = "NONE"
end

local function apply_highlight_overrides(groups)
  for group, opts in pairs(M.config.highlight_overrides) do
    if groups[group] then
      for key, value in pairs(opts) do
        groups[group][key] = value
      end
    else
      groups[group] = opts
    end
  end
end

local function filter_integrations(groups)
  local filtered = {}
  
  for group, opts in pairs(groups) do
    local should_include = true
    
    if not M.config.integrations.telescope and group:match("Telescope") then
      should_include = false
    end
    
    if not M.config.integrations.nvimtree and group:match("NvimTree") then
      should_include = false
    end
    
    if not M.config.integrations.which_key and group:match("WhichKey") then
      should_include = false
    end
    
    if not M.config.integrations.cmp and group:match("Cmp") then
      should_include = false
    end
    
    if not M.config.integrations.gitsigns and group:match("GitSigns") then
      should_include = false
    end
    
    if not M.config.integrations.treesitter and group:match("@") then
      should_include = false
    end
    
    if not M.config.integrations.snacks and group:match("Snacks") then
      should_include = false
    end
    
    if should_include then
      filtered[group] = opts
    end
  end
  
  return filtered
end

function M.load()
  local style = M.config.style
  local theme_module = require("opencode.themes." .. style)
  local colors = require("opencode.colors").theme[style]
  
  local groups = vim.deepcopy(theme_module.groups)
  
  apply_style_overrides(groups)
  apply_transparency(groups)
  apply_highlight_overrides(groups)
  groups = filter_integrations(groups)
  
  apply_highlights(groups)
  apply_terminal_colors(colors)
  
  vim.opt.background = style
end

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", default_config, opts or {})
  
  if vim.fn.has("nvim-0.7.0") == 0 then
    vim.notify("opencode.nvim requires Neovim 0.7.0 or higher", vim.log.levels.ERROR)
    return
  end
  
  local autocmd = vim.api.nvim_create_autocmd
  local augroup = vim.api.nvim_create_augroup
  
  augroup("OpencodeTheme", { clear = true })
  
  autocmd("ColorSchemePre", {
    group = "OpencodeTheme",
    callback = function()
      if vim.g.colors_name == "opencode" then
        M.load()
      end
    end,
  })
  
  if vim.g.colors_name == "opencode" then
    M.load()
  end
end

function M.colorscheme()
  vim.cmd("colorscheme opencode")
end

return M