local colors = require("opencode-theme.colors").theme.light

local M = {}

M.groups = {
  Normal = { fg = colors.text, bg = colors.background },
  NormalFloat = { fg = colors.text, bg = colors.backgroundPanel },
  NormalNC = { fg = colors.text, bg = colors.background },
  
  Cursor = { fg = colors.background, bg = colors.primary },
  CursorLine = { bg = colors.backgroundElement },
  CursorColumn = { bg = colors.backgroundElement },
  ColorColumn = { bg = colors.backgroundElement },
  
  LineNr = { fg = colors.textMuted },
  CursorLineNr = { fg = colors.primary },
  
  Folded = { fg = colors.textMuted, bg = colors.backgroundElement },
  FoldColumn = { fg = colors.textMuted, bg = colors.background },
  
  SignColumn = { fg = colors.textMuted, bg = colors.background },
  
  Pmenu = { fg = colors.text, bg = colors.backgroundPanel },
  PmenuSel = { fg = colors.background, bg = colors.primary },
  PmenuSbar = { bg = colors.borderSubtle },
  PmenuThumb = { bg = colors.borderActive },
  
  TabLine = { fg = colors.textMuted, bg = colors.backgroundElement },
  TabLineFill = { fg = colors.textMuted, bg = colors.backgroundElement },
  TabLineSel = { fg = colors.text, bg = colors.primary },
  
  StatusLine = { fg = colors.text, bg = colors.backgroundElement },
  StatusLineNC = { fg = colors.textMuted, bg = colors.backgroundElement },
  
  WinSeparator = { fg = colors.border },
  VertSplit = { fg = colors.border },
  
  Search = { fg = colors.background, bg = colors.primary },
  IncSearch = { fg = colors.background, bg = colors.warning },
  CurSearch = { fg = colors.background, bg = colors.warning },
  
  MatchParen = { fg = colors.warning, bold = true },
  
  Directory = { fg = colors.primary },
  
  Title = { fg = colors.primary, bold = true },
  
  ErrorMsg = { fg = colors.error },
  WarningMsg = { fg = colors.warning },
  MoreMsg = { fg = colors.info },
  ModeMsg = { fg = colors.info },
  
  Question = { fg = colors.info },
  
  NonText = { fg = colors.textMuted },
  EndOfBuffer = { fg = colors.textMuted },
  
  SpecialKey = { fg = colors.textMuted },
  
  Visual = { bg = colors.borderSubtle },
  VisualNOS = { bg = colors.borderSubtle },
  
  SpellBad = { fg = colors.error, undercurl = true },
  SpellCap = { fg = colors.warning, undercurl = true },
  SpellLocal = { fg = colors.info, undercurl = true },
  SpellRare = { fg = colors.accent, undercurl = true },
  
  Comment = { fg = colors.syntaxComment, italic = true },
  Constant = { fg = colors.syntaxVariable },
  String = { fg = colors.syntaxString },
  Character = { fg = colors.syntaxString },
  Number = { fg = colors.syntaxNumber },
  Boolean = { fg = colors.syntaxNumber },
  Float = { fg = colors.syntaxNumber },
  
  Identifier = { fg = colors.syntaxVariable },
  Function = { fg = colors.syntaxFunction },
  
  Statement = { fg = colors.syntaxKeyword },
  Conditional = { fg = colors.syntaxKeyword },
  Repeat = { fg = colors.syntaxKeyword },
  Label = { fg = colors.syntaxKeyword },
  Operator = { fg = colors.syntaxOperator },
  Keyword = { fg = colors.syntaxKeyword },
  Exception = { fg = colors.syntaxKeyword },
  
  PreProc = { fg = colors.syntaxKeyword },
  Include = { fg = colors.syntaxKeyword },
  Define = { fg = colors.syntaxKeyword },
  Macro = { fg = colors.syntaxKeyword },
  PreCondit = { fg = colors.syntaxKeyword },
  
  Type = { fg = colors.syntaxType },
  StorageClass = { fg = colors.syntaxType },
  Structure = { fg = colors.syntaxType },
  Typedef = { fg = colors.syntaxType },
  
  Special = { fg = colors.accent },
  SpecialChar = { fg = colors.accent },
  Tag = { fg = colors.primary },
  Delimiter = { fg = colors.syntaxPunctuation },
  SpecialComment = { fg = colors.syntaxComment, italic = true },
  Debug = { fg = colors.error },
  
  Underlined = { underline = true },
  Bold = { bold = true },
  Italic = { italic = true },
  
  Ignore = { fg = colors.textMuted },
  Error = { fg = colors.error },
  Todo = { fg = colors.warning, bold = true },
  
  DiffAdd = { fg = colors.diffAdded, bg = colors.diffAddedBg },
  DiffChange = { fg = colors.diffContext, bg = colors.diffContextBg },
  DiffDelete = { fg = colors.diffRemoved, bg = colors.diffRemovedBg },
  DiffText = { fg = colors.diffHighlightAdded, bg = colors.diffAddedBg },
  
  DiffAdded = { fg = colors.diffAdded },
  DiffRemoved = { fg = colors.diffRemoved },
  DiffChanged = { fg = colors.diffContext },
  DiffOldFile = { fg = colors.diffRemoved },
  DiffNewFile = { fg = colors.diffAdded },
  DiffFile = { fg = colors.diffContext },
  DiffLine = { fg = colors.diffContext },
  DiffIndexLine = { fg = colors.primary },
  
  GitSignsAdd = { fg = colors.diffAdded },
  GitSignsChange = { fg = colors.diffContext },
  GitSignsDelete = { fg = colors.diffRemoved },
  GitSignsAddNr = { fg = colors.diffAdded },
  GitSignsChangeNr = { fg = colors.diffContext },
  GitSignsDeleteNr = { fg = colors.diffRemoved },
  GitSignsAddLn = { bg = colors.diffAddedLineNumberBg },
  GitSignsChangeLn = { bg = colors.diffContextBg },
  GitSignsDeleteLn = { bg = colors.diffRemovedLineNumberBg },
  
  DiagnosticError = { fg = colors.error },
  DiagnosticWarn = { fg = colors.warning },
  DiagnosticInfo = { fg = colors.info },
  DiagnosticHint = { fg = colors.primary },
  DiagnosticOk = { fg = colors.success },
  
  DiagnosticUnderlineError = { fg = colors.error, undercurl = true },
  DiagnosticUnderlineWarn = { fg = colors.warning, undercurl = true },
  DiagnosticUnderlineInfo = { fg = colors.info, undercurl = true },
  DiagnosticUnderlineHint = { fg = colors.primary, undercurl = true },
  DiagnosticUnderlineOk = { fg = colors.success, undercurl = true },
  
  DiagnosticVirtualTextError = { fg = colors.error },
  DiagnosticVirtualTextWarn = { fg = colors.warning },
  DiagnosticVirtualTextInfo = { fg = colors.info },
  DiagnosticVirtualTextHint = { fg = colors.primary },
  DiagnosticVirtualTextOk = { fg = colors.success },
  
  DiagnosticSignError = { fg = colors.error },
  DiagnosticSignWarn = { fg = colors.warning },
  DiagnosticSignInfo = { fg = colors.info },
  DiagnosticSignHint = { fg = colors.primary },
  DiagnosticSignOk = { fg = colors.success },
  
  DiagnosticFloatingError = { fg = colors.error, bg = colors.backgroundPanel },
  DiagnosticFloatingWarn = { fg = colors.warning, bg = colors.backgroundPanel },
  DiagnosticFloatingInfo = { fg = colors.info, bg = colors.backgroundPanel },
  DiagnosticFloatingHint = { fg = colors.primary, bg = colors.backgroundPanel },
  DiagnosticFloatingOk = { fg = colors.success, bg = colors.backgroundPanel },
  
  LspReferenceText = { bg = colors.borderSubtle },
  LspReferenceRead = { bg = colors.borderSubtle },
  LspReferenceWrite = { bg = colors.borderSubtle },
  
  LspSignatureActiveParameter = { fg = colors.warning, bold = true },
  
  LspCodeLens = { fg = colors.textMuted },
  LspCodeLensSeparator = { fg = colors.textMuted },
  
  LspInlayHint = { fg = colors.textMuted, italic = true },
  
  markdownHeadingDelimiter = { fg = colors.markdownHeading, bold = true },
  markdownCode = { fg = colors.markdownCode },
  markdownCodeBlock = { fg = colors.markdownCodeBlock, bg = colors.backgroundElement },
  markdownH1 = { fg = colors.markdownHeading, bold = true },
  markdownH2 = { fg = colors.markdownHeading, bold = true },
  markdownH3 = { fg = colors.markdownHeading, bold = true },
  markdownH4 = { fg = colors.markdownHeading, bold = true },
  markdownH5 = { fg = colors.markdownHeading, bold = true },
  markdownH6 = { fg = colors.markdownHeading, bold = true },
  markdownLinkText = { fg = colors.markdownLinkText, underline = true },
  markdownUrl = { fg = colors.markdownLink, underline = true },
  markdownBold = { fg = colors.markdownStrong, bold = true },
  markdownItalic = { fg = colors.markdownEmph, italic = true },
  markdownListMarker = { fg = colors.markdownListItem },
  markdownOrderedListMarker = { fg = colors.markdownListEnumeration },
  markdownBlockQuote = { fg = colors.markdownBlockQuote },
  markdownRule = { fg = colors.markdownHorizontalRule },
  
  ["@comment"] = { fg = colors.syntaxComment, italic = true },
  ["@comment.documentation"] = { fg = colors.syntaxComment, italic = true },
  ["@comment.error"] = { fg = colors.error },
  ["@comment.warning"] = { fg = colors.warning },
  ["@comment.todo"] = { fg = colors.warning, bold = true },
  ["@comment.note"] = { fg = colors.info },
  
  ["@variable"] = { fg = colors.syntaxVariable },
  ["@variable.builtin"] = { fg = colors.syntaxKeyword },
  ["@variable.parameter"] = { fg = colors.syntaxVariable },
  ["@variable.member"] = { fg = colors.syntaxVariable },
  
  ["@constant"] = { fg = colors.syntaxVariable },
  ["@constant.builtin"] = { fg = colors.syntaxKeyword },
  ["@constant.macro"] = { fg = colors.syntaxKeyword },
  
  ["@string"] = { fg = colors.syntaxString },
  ["@string.documentation"] = { fg = colors.syntaxString },
  ["@string.regexp"] = { fg = colors.accent },
  ["@string.escape"] = { fg = colors.accent },
  ["@string.special"] = { fg = colors.accent },
  ["@string.special.symbol"] = { fg = colors.accent },
  ["@string.special.url"] = { fg = colors.markdownLink, underline = true },
  ["@character"] = { fg = colors.syntaxString },
  ["@character.special"] = { fg = colors.accent },
  
  ["@number"] = { fg = colors.syntaxNumber },
  ["@number.float"] = { fg = colors.syntaxNumber },
  
  ["@boolean"] = { fg = colors.syntaxNumber },
  
  ["@type"] = { fg = colors.syntaxType },
  ["@type.builtin"] = { fg = colors.syntaxType },
  ["@type.definition"] = { fg = colors.syntaxType },
  ["@type.qualifier"] = { fg = colors.syntaxKeyword },
  
  ["@attribute"] = { fg = colors.accent },
  ["@property"] = { fg = colors.syntaxVariable },
  
  ["@function"] = { fg = colors.syntaxFunction },
  ["@function.builtin"] = { fg = colors.syntaxFunction },
  ["@function.call"] = { fg = colors.syntaxFunction },
  ["@function.macro"] = { fg = colors.syntaxKeyword },
  ["@function.method"] = { fg = colors.syntaxFunction },
  ["@function.method.call"] = { fg = colors.syntaxFunction },
  
  ["@constructor"] = { fg = colors.syntaxType },
  ["@operator"] = { fg = colors.syntaxOperator },
  
  ["@keyword"] = { fg = colors.syntaxKeyword },
  ["@keyword.coroutine"] = { fg = colors.syntaxKeyword },
  ["@keyword.function"] = { fg = colors.syntaxKeyword },
  ["@keyword.operator"] = { fg = colors.syntaxKeyword },
  ["@keyword.import"] = { fg = colors.syntaxKeyword },
  ["@keyword.type"] = { fg = colors.syntaxKeyword },
  ["@keyword.modifier"] = { fg = colors.syntaxKeyword },
  ["@keyword.repeat"] = { fg = colors.syntaxKeyword },
  ["@keyword.return"] = { fg = colors.syntaxKeyword },
  ["@keyword.debug"] = { fg = colors.error },
  ["@keyword.exception"] = { fg = colors.syntaxKeyword },
  ["@keyword.conditional"] = { fg = colors.syntaxKeyword },
  ["@keyword.conditional.ternary"] = { fg = colors.syntaxKeyword },
  
  ["@label"] = { fg = colors.syntaxKeyword },
  
  ["@module"] = { fg = colors.syntaxVariable },
  ["@module.builtin"] = { fg = colors.syntaxKeyword },
  
  ["@punctuation.delimiter"] = { fg = colors.syntaxPunctuation },
  ["@punctuation.bracket"] = { fg = colors.syntaxPunctuation },
  ["@punctuation.special"] = { fg = colors.accent },
  
  ["@markup.strong"] = { fg = colors.markdownStrong, bold = true },
  ["@markup.italic"] = { fg = colors.markdownEmph, italic = true },
  ["@markup.strikethrough"] = { fg = colors.textMuted, strikethrough = true },
  ["@markup.underline"] = { underline = true },
  
  ["@markup.heading"] = { fg = colors.markdownHeading, bold = true },
  ["@markup.heading.1"] = { fg = colors.markdownHeading, bold = true },
  ["@markup.heading.2"] = { fg = colors.markdownHeading, bold = true },
  ["@markup.heading.3"] = { fg = colors.markdownHeading, bold = true },
  ["@markup.heading.4"] = { fg = colors.markdownHeading, bold = true },
  ["@markup.heading.5"] = { fg = colors.markdownHeading, bold = true },
  ["@markup.heading.6"] = { fg = colors.markdownHeading, bold = true },
  
  ["@markup.quote"] = { fg = colors.markdownBlockQuote },
  ["@markup.math"] = { fg = colors.accent },
  ["@markup.environment"] = { fg = colors.accent },
  ["@markup.environment.name"] = { fg = colors.accent },
  
  ["@markup.link"] = { fg = colors.markdownLink, underline = true },
  ["@markup.link.label"] = { fg = colors.markdownLinkText },
  ["@markup.link.url"] = { fg = colors.markdownLink, underline = true },
  
  ["@markup.raw"] = { fg = colors.markdownCode },
  ["@markup.raw.block"] = { fg = colors.markdownCodeBlock, bg = colors.backgroundElement },
  
  ["@markup.list"] = { fg = colors.markdownListItem },
  ["@markup.list.checked"] = { fg = colors.success },
  ["@markup.list.unchecked"] = { fg = colors.textMuted },
  
  ["@diff.plus"] = { fg = colors.diffAdded },
  ["@diff.minus"] = { fg = colors.diffRemoved },
  ["@diff.delta"] = { fg = colors.diffContext },
  
  ["@tag"] = { fg = colors.primary },
  ["@tag.attribute"] = { fg = colors.syntaxVariable },
  ["@tag.delimiter"] = { fg = colors.syntaxPunctuation },
  
  ["@none"] = {},
  
  ["@error"] = { fg = colors.error },
  ["@warning"] = { fg = colors.warning },
  ["@info"] = { fg = colors.info },
  ["@hint"] = { fg = colors.primary },
  ["@ok"] = { fg = colors.success },
  
  ["@debug"] = { fg = colors.error },
  
  ["@variable.global"] = { fg = colors.syntaxVariable },
  ["@variable.static"] = { fg = colors.syntaxVariable },
  ["@variable.super"] = { fg = colors.syntaxKeyword },
  ["@variable.self"] = { fg = colors.syntaxKeyword },
  
  ["@property.static"] = { fg = colors.syntaxVariable },
  
  ["@function.static"] = { fg = colors.syntaxFunction },
  
  ["@type.static"] = { fg = colors.syntaxType },
  
  TreeNormal = { fg = colors.text, bg = colors.backgroundPanel },
  TreeNormalNC = { fg = colors.text, bg = colors.backgroundPanel },
  
  TelescopeNormal = { fg = colors.text, bg = colors.backgroundPanel },
  TelescopeBorder = { fg = colors.border, bg = colors.backgroundPanel },
  TelescopeTitle = { fg = colors.primary, bg = colors.backgroundPanel, bold = true },
  TelescopeSelection = { fg = colors.background, bg = colors.primary },
  TelescopeSelectionCaret = { fg = colors.warning, bg = colors.primary },
  TelescopeMatching = { fg = colors.warning, bold = true },
  TelescopePromptNormal = { fg = colors.text, bg = colors.backgroundElement },
  TelescopePromptBorder = { fg = colors.border, bg = colors.backgroundElement },
  TelescopePromptTitle = { fg = colors.primary, bg = colors.backgroundElement, bold = true },
  TelescopePreviewNormal = { fg = colors.text, bg = colors.background },
  TelescopePreviewBorder = { fg = colors.border, bg = colors.background },
  TelescopePreviewTitle = { fg = colors.primary, bg = colors.background, bold = true },
  
  NvimTreeNormal = { fg = colors.text, bg = colors.backgroundPanel },
  NvimTreeNormalNC = { fg = colors.text, bg = colors.backgroundPanel },
  NvimTreeRootFolder = { fg = colors.primary, bold = true },
  NvimTreeFolderName = { fg = colors.primary },
  NvimTreeFolderIcon = { fg = colors.primary },
  NvimTreeEmptyFolderName = { fg = colors.textMuted },
  NvimTreeOpenedFolderName = { fg = colors.primary, bold = true },
  NvimTreeFileName = { fg = colors.text },
  NvimTreeExecFile = { fg = colors.success, bold = true },
  NvimTreeOpenedFile = { fg = colors.primary },
  NvimTreeSpecialFile = { fg = colors.accent, bold = true },
  NvimTreeImageFile = { fg = colors.textMuted },
  NvimTreeMarkdownFile = { fg = colors.syntaxKeyword },
  NvimTreeIndentMarker = { fg = colors.borderSubtle },
  NvimTreeGitDirty = { fg = colors.warning },
  NvimTreeGitStaged = { fg = colors.success },
  NvimTreeGitMerge = { fg = colors.info },
  NvimTreeGitRenamed = { fg = colors.info },
  NvimTreeGitNew = { fg = colors.success },
  NvimTreeGitDeleted = { fg = colors.error },
  NvimTreeLspDiagnosticsError = { fg = colors.error },
  NvimTreeLspDiagnosticsWarning = { fg = colors.warning },
  NvimTreeLspDiagnosticsInformation = { fg = colors.info },
  NvimTreeLspDiagnosticsHint = { fg = colors.primary },
  
  WhichKey = { fg = colors.primary },
  WhichKeyGroup = { fg = colors.accent },
  WhichKeySeparator = { fg = colors.border },
  WhichKeyDesc = { fg = colors.text },
  WhichKeyFloat = { fg = colors.text, bg = colors.backgroundPanel },
  WhichKeyValue = { fg = colors.textMuted },
  
  CmpItemAbbr = { fg = colors.text },
  CmpItemAbbrDeprecated = { fg = colors.textMuted, strikethrough = true },
  CmpItemAbbrMatch = { fg = colors.primary, bold = true },
  CmpItemAbbrMatchFuzzy = { fg = colors.primary, bold = true },
  CmpItemKind = { fg = colors.accent },
  CmpItemMenu = { fg = colors.textMuted },
  CmpItemKindText = { fg = colors.text },
  CmpItemKindMethod = { fg = colors.syntaxFunction },
  CmpItemKindFunction = { fg = colors.syntaxFunction },
  CmpItemKindConstructor = { fg = colors.syntaxType },
  CmpItemKindField = { fg = colors.syntaxVariable },
  CmpItemKindVariable = { fg = colors.syntaxVariable },
  CmpItemKindClass = { fg = colors.syntaxType },
  CmpItemKindInterface = { fg = colors.syntaxType },
  CmpItemKindModule = { fg = colors.syntaxKeyword },
  CmpItemKindProperty = { fg = colors.syntaxVariable },
  CmpItemKindUnit = { fg = colors.syntaxVariable },
  CmpItemKindValue = { fg = colors.syntaxVariable },
  CmpItemKindEnum = { fg = colors.syntaxType },
  CmpItemKindKeyword = { fg = colors.syntaxKeyword },
  CmpItemKindSnippet = { fg = colors.accent },
  CmpItemKindColor = { fg = colors.accent },
  CmpItemKindFile = { fg = colors.text },
  CmpItemKindReference = { fg = colors.syntaxVariable },
  CmpItemKindFolder = { fg = colors.text },
  CmpItemKindEnumMember = { fg = colors.syntaxVariable },
  CmpItemKindConstant = { fg = colors.syntaxVariable },
  CmpItemKindStruct = { fg = colors.syntaxType },
  CmpItemKindEvent = { fg = colors.accent },
  CmpItemKindOperator = { fg = colors.syntaxOperator },
  CmpItemKindTypeParameter = { fg = colors.syntaxType },
}

return M