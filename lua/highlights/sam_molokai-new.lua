return {
  ['@tag.delimiter'] = { fg="#82cfff" },
  ['@tag.attribute'] = { fg="#82cfff" },
  ['@symbol'] = { bold=true, fg="#82cfff" },
  ['@string.regex'] = { fg="#08bdba" },
  ['@punctuation.special'] = { fg="#3ddbd9" },
  ['@punctuation.delimiter'] = { fg="#3ddbd9" },
  ['@punctuation.bracket'] = { fg="#8Cff48" },
  ['@keyword.operator'] = { fg="#3ddbd9" },
  -- ['@keyword.function'] = { fg="#3ddbd9" },
  ['@keyword.function'] = { fg="#ff7eb6" },
  ['@function'] = { bold = true, fg='#36ce5e' },
  ['@error'] = { fg="#33b1ff" },
  ['@constant'] = { fg="#be95ff" },
  ['@constant.builtin'] = { fg="#08bdba" },
  ['@constant.macro'] = { fg="#08bdba" },
  ['@string.escape'] = { fg="#82cfff" },
  -- ['@function'] = { bold=true, fg="#ff7eb6" },
  ['@function.builtin'] = { fg="#ff7eb6" },
  ['@function.macro'] = { fg="#08bdba" },
  ['@method'] = { fg="#08bdba" },
  ['@field'] = { fg="#d4bbff" },
  ['@odp.import_module'] = { fg="#5C97FF" },
  ['@property'] = { fg="#ee5396" },
  ['@repeat'] = { fg="#78a9ff" },
  ['@label'] = { fg="#82cfff" },
  ['@keyword'] = { fg="#78a9ff" },
  ['@exception'] = { fg="#82cfff" },
  ['@variable'] = { fg="#d0d0d0" },
  ['@namespace'] = { fg="#08bdba" },
  ['@include'] = { fg="#26c99e" },
  ['@tag'] = { fg="#78a9ff" },


  -- @text.literal = { fg="#ae81ff",  },
  ['@text.title'] = { fg="#ee5396",  },
  -- @text.uri = { underline=true, fg="#be95ff",  },
  ['@text.emphasis'] = { bold=true, fg="#ee5396", italic=true  },
  ['@text.quote'] = { fg="#666666", italic=true },
  ['@text.strong'] = { fg="#FFFFFF", bold=true },
  ['@text.literal'] = { fg = "#AE81FF" },
  ['@text.strike'] = { bg="#333333", fg="#666666", strikethrough=true },
  ['@text.reference'] = { fg="#4dabf7", underline=true },
  ['@text.uri'] =  { underline=true, fg="#bd95ff" },
  ['@text.underline'] = { underline=true, fg="#ee5396" },
  -- ['@variable'] = { fg="#d0d0d0" },
  ['@parameter'] = { fg = "#FFB53D" },
  ['@type.builtin'] = { fg="#26C99E" },
  ['@method.call'] = { fg = "#36ce5e" },
  ['@string.documentation'] = { fg = "#697077", italic=true },

  Headline1 = { bg="#1e2718" },
  Headline2 = { bg="#21262d" },
  Dash = { bg="#222222", bold = true },
  CodeiumSuggestion = { fg = "#444444", bg = "#222222" },
  -- RainbowDelimiter00     = { fg="#f8f8f8" },
  RainbowDelimiter00     = { fg="#ee5396", bold=true },
  RainbowDelimiter01     = { fg="#FD971F" },
  RainbowDelimiter02     = { fg="#FFFF00", bold=true },
  RainbowDelimiter03     = { fg="#36CE5E"},
  RainbowDelimiter04     = { fg="#1A8FFF", bold=true},
  RainbowDelimiter05     = { fg="#AE81FF" },
  RainbowDelimiter06     = { fg="#00CCFF", bold=true },
-- WhichKeyDesc   gui= links to Identifier
-- WhichKeyGroup  gui= links to Keyword
-- WhichKeyBorder gui= links to FloatBorder
-- WhichKeyFloat  gui= links to NormalFloat
-- WhichKeyValue  gui= links to Comment
  NormalFloat = { bg="#222222" },
  WhichKeyDesc = { fg="#d0d0d0" },
  WhichKeyGroup = { fg="#ee5396" },
  WhichKeyBorder = { fg="#00CCFF" },
  WhichKeyFloat = { bg="#222222" },
  QuickScopePrimary = { reverse=true, bold=true, underline=true, bg="none" },
  -- QuickScopePrimary = { bg="#222222", sp="#666666", fg="none", underline=true, bold=true},
  -- QuickFixLine = { bg="#262626",  },
  LineNr = { fg="#383838", bg = "none" },
  Keyword =  { fg="#FF79FF" },
  DiagnosticWarn = { fg = "#FFB53D" },
  TerminalCSIColorCode = { fg = "#00CCFF" },
  -- FloatTitle = { links to Title },
  FloatBorder = { fg="#131313",  bg="#161616",  },
  -- FloatShadow = { bg="#000000", blend=80 },
  -- FloatShadowThrough = { bg="#000000", blend=100 },
  -- NotifyBackground                       ={ guibg="#1c1c1c" }, -- NotifyBackground xxx links to Normal
  -- WinBarNC = { links to WinBar },
  -- FloatTitle = { links to Title },
  -- PmenuKind = { links to Pmenu },
  -- PmenuKindSel = { links to PmenuSel },
  -- PmenuExtra = { links to Pmenu },
  -- PmenuExtraSel = { links to PmenuSel },
  -- TabLine = { links to StatusLineNC },
  -- TabLineSel = { links to StatusLine },
  -- TabLineFill = { links to TabLine },
  -- Whitespace = { links to NonText },
  Whitespace = { bg="#1f1f1f" },
  Pmenu  = {fg="#d0d0d0", bg="#222222"},
  PmenuSbar = {fg="#d0d0d0", bg="#222222"},
  PmenuSel = { fg="#3ddbd9", bg="#222222"},
  PmenuThumb = {fg="#3ddbd9", bg="#222222"},
  IlluminatedWordText = { bg="#282828", fg="#ff5252" },
  IlluminatedWordRead = { bg="#282828", fg="#ffffff" },
  IlluminatedWordWrite = { bg="#252525", fg="#bdbdbd" },
  termcolorcode_cfg_246_gfg_949494 = { fg="#838383" },
  termcolorcode_cfg_208_gfg_FF8700 = { fg="#ff8700" },
  termcolorcode_cfg_37_gfg_00AFAF = { fg="#46D9FF" },
  termcolorcode_cfg_39_gfg_00AFFF = { fg="#00afff" },
  termcolorcode_cfg_5_gfg_AA00AA = { fg="#ff79ff" },
  termcolorcode_cfg_2_gfg_00AA00 = { fg="#00aa00" },
  termcolorcode_c_bold_cfg_5_g_bold_gfg_AA00AA = { fg="#d4bbff" },
  termcolorcode_cfg_3_gfg_AA5500 = { fg="#FFFF00" },
  termcolorcode_cfg_10_gfg_55FF55 = { fg="#55ff55" },
  termcolorcode_cfg_13_gfg_FF55FF = { fg="#ff55ff" },
  Search = { bold=true, fg="#1c1c1c",  bg="#00ccff",  },
  CurSearch = { bg="#FF5252", fg="#1c1c1c", bold=true },
  NeoTreeGitUnstaged = { fg="#939393", italic=false, bold=false },
  NeoTreeGitUntracked = { fg="#666666", italic=false, bold=false },
  NeoTreeGitConflict = { fg="#FFFF00", italic=false, bold=true },
  NeoTreeModified = { fg="#AE81FF", italic=false },
  BufferLineBufferSelected = { fg="#9e9e9e", bg="#282828", italic=false, bold=true },
  NotifyBackground = { bg="#222222", fg="#939393" },
  NotifyERRORBody = { fg="#f8f8f8", bg="#1c1c1c" }, -- NotifyERRORBody xxx links to Normal
  NotifyWARNBody                         ={ fg="#f8f8f8", bg="#1c1c1c" }, -- NotifyWARNBody xxx links to Normal
  NotifyINFOBody                         ={ fg="#f8f8f8", bg="#1c1c1c" }, -- NotifyINFOBody xxx links to Normal
  NotifyDEBUGBody                        ={ fg="#f8f8f8", bg="#1c1c1c" }, -- NotifyDEBUGBody xxx links to Normal
  NotifyTRACEBody                        ={ fg="#f8f8f8", bg="#1c1c1c" }, -- NotifyTRACEBody xxx links to Normal
  NotifyLogTitle                         ={ fg="#00CCFF", bg="#1c1c1c" }, -- NotifyLogTitle xxx links to Special
  NotifyLogTime                          ={ fg="#777777", bg="#1c1c1c" }, -- NotifyLogTime  xxx links to Comment
  NotifyWARNBorder                       ={ fg="#FFB53D", }, -- NotifyWARNBorder xxx guifg=#79491d
  NotifyWARNIcon                         ={ fg="#FFb53d", }, -- NotifyWARNIcon xxx guifg=#f79000
  NotifyWARNTitle                        ={ fg="#FFb53d", }, -- NotifyWARNTitle xxx guifg=#f79000
  NotifyDEBUGBorder                      ={ fg="#d4bbff", }, -- NotifyDEBUGBorder xxx guifg=#8b8b8b
  NotifyDEBUGIcon                        ={ fg="#d4bbff", }, -- NotifyDEBUGIcon xxx guifg=#8b8b8b
  NotifyDEBUGTitle                       ={ fg="#d4bbff", }, -- NotifyDEBUGTitle xxx guifg=#8b8b8b
  NotifyERRORBorder                      ={ fg="#FF5252", }, -- NotifyERRORBorder xxx guifg=#8a1f1f
  NotifyERRORTitle                       ={ fg="#ff5252", }, -- NotifyERRORTitle xxx guifg=#f70067
  NotifyERRORIcon                        ={ fg="#FF5252", }, -- NotifyERRORIcon xxx guifg=#f70067
  NotifyINFOBorder                       ={ fg="#a9ff68", }, -- NotifyINFOBorder xxx guifg=#4f6752
  NotifyINFOIcon                         ={ fg="#a9ff68", }, -- NotifyINFOIcon xxx guifg=#a9ff68
  NotifyINFOTitle                        ={ fg="#a9ff68", }, -- NotifyINFOTitle xxx guifg=#a9ff68
  NotifyTRACEBorder                      ={ fg="#d484ff", }, -- NotifyTRACEBorder xxx guifg=#4f3552
  NotifyTRACEIcon                        ={ fg="#d484ff", }, -- NotifyTRACEIcon xxx guifg=#d484ff
  NotifyTRACETitle                       ={ fg="#d484ff", }, -- NotifyTRACETitle xxx guifg=#d484ff
  jukit_textcell_bg_colors = { bg="#333333" },
  Directory = { fg="#3ddbd9" },
  ErrorMsg = { fg="#ee5396" },
  MoreMsg = { fg="#3ddbd9",  },
  ModeMsg = { fg="#d0d0d0",  },
  -- LineNr = { fg="#444444",  bg="none",  },
  CursorLineNr = { fg="#d0d0d0",  },
  Question = { fg="#d0d0d0",  },
  StatusLine = { fg="#d0d0d0",  bg="#222222",  },
  StatusLineNC = { fg="#d0d0d0",  bg="#262626",  },
  VertSplit = { fg="#262626",  bg="none",  },
  Title = { fg="#d0d0d0", bold=true },
  Visual = { bg="#393939",  },
  VisualNC = {  },
  WarningMsg = { fg="#be95ff",  },
  WildMenu = { fg="#3ddbd9",  bg="#222222",  },
  Folded = { fg="#393939",  bg="#262626",  },
  FoldColumn = { fg="#262626",  bg="none",  },
  DiffAdd = { bg="#122f2f",  },
  DiffChange = { bg="#222a39",  },
  DiffDelete = { bg="#361c28",  },
  DiffText = { bg="#2f3f5c",  },
  SignColumn = { fg="#262626",  bg="none",  },
  -- Conceal = {  },
  CursorColumn = { bg="#262626",  },
  CursorLine = { bg="#262626",  },
  colorcolumn = { bg="#262626",  },
  NormalNC = { fg="#f2f2f2",  bg="#161616",  },
  MsgArea = {  },
  WinBar = { bold = true },
  Cursor = { reverse = true },
  Normal = { fg="#bdbdbd",  },
  Substitute = { fg="#262626",  bg="#3ddbd9",  },
  RedrawDebugNormal = { reverse=true },
  RedrawDebugClear = { bg="#FFFF00" },
  RedrawDebugComposed = { bg="#63ff5b" },
  RedrawDebugRecompose = { bg="#FF5252" },
  String = { fg="#d3ff3b", italic=true },
  Comment = { fg="#494949" },
}

  --   require("notify").setup({
  --     background_colour = "#000000",
  -- }),
  -- this table overrides highlights in all themes
  -- Normal = { bg = "#000000" },
  -- Normal = { bg = "#1c1c1c" },
  -- ['@method'] = { fg = "#36ce5e" },
  -- ['@variable.builtin'] = { "#d4bbff" }
  -- [ '']
  -- this table overrides highlights in all themes
  -- Normal = { bg = "#000000" },
  -- Normal = { bg = "#1c1c1c" },
  -- lineNr = { fg="#202020" },
  -- Normal = { bg="#1c1c1c" },
  -- string = { fg='#f1e05a' },
  -- string = { fg='#fddc69' },
  -- @tag.delimiter = { fg="#82cfff",  },
  -- @tag.attribute = { fg="#82cfff",  },
  -- ['@symbol'] = { bold=true, fg="#82cfff",  },
  -- @string.regex = { fg="#08bdba",  },
  -- @punctuation.special = { fg="#3ddbd9",  },
  -- @punctuation.delimiter = { fg="#3ddbd9",  },
  -- @punctuation.bracket = { fg="#3ddbd9",  },
  -- @method.call = { fg="#36ce5e",  },
  -- @keyword.operator = { fg="#3ddbd9",  },
  -- @keyword.function = { fg="#3ddbd9",  },
  -- FlashBackdrop = {  },
  -- ['@error'] = { fg="#33b1ff",  },
  -- ['@parameter'] = { fg = "#FFB53D" },
  -- ['@text'] = { fg="#d0d0d0",  },
  -- @text.literal = { fg="#ae81ff",  },
  -- @text.title = { fg="#ee5396",  },
  -- @text.uri = { underline=true, fg="#be95ff",  },
  -- Underlined = { gui=underline },
  -- @text.underline = { underline=true, fg="#ee5396",  },
  -- ['@constant'] = { fg="#be95ff",  },
  -- @constant.builtin = { fg="#08bdba",  },
  -- @constant.macro = { fg="#08bdba",  },
  -- @string.escape = { fg="#82cfff",  },
  -- ['@function'] = { bold=true, fg="#ff7eb6",  },
  -- @function.builtin = { fg="#ff7eb6",  },
  -- @function.macro = { fg="#08bdba",  },
  -- ['@parameter'] = { fg="#ffb53d",  },
  -- ['@method'] = { fg="#08bdba",  },
  -- ['@field'] = { fg="#d0d0d0",  },
  -- ['@property'] = { fg="#ee5396",  },
  -- ['@constructor'] = { fg="#78a9ff",  },
  -- ['@conditional'] = { fg="#78a9ff",  },
  -- ['@repeat'] = { fg="#78a9ff",  },
  -- ['@label'] = { fg="#82cfff",  },
  -- ['@keyword'] = { fg="#78a9ff",  },
  -- ['@exception'] = { fg="#82cfff",  },
  -- ['@variable'] = { fg="#d0d0d0",  },
  -- ['@namespace'] = { fg="#08bdba",  },
  -- ['@include'] = { fg="#78a9ff",  },
  -- ['@tag'] = { fg="#78a9ff",  },
  -- @text.emphasis = { bold=true, fg="#ee5396",  },
  -- @text.strike = { cterm=strikethrough gui=strikethrough fg="#ee5396",  },
  -- @type.builtin = { fg="#26c99e",  },
  -- -------------------------------------
  -- ['@constant'] = { fg = "#a9ff68" },
  -- ['@parameter'] = { fg = "#FFB53D" },
  -- ['@method.call'] = { fg = "#36ce5e" },
  -- ['@variable.builtin'] = { fg = "#d4bbff" },
  -- ['@variable.builtin'] = { fg = "#a2a9b0" },
  -- ['@keyword.function'] = { fg = "#ee5396" },
  -- ['@punctuation.bracket'] = { fg = '#8cff48' },
  -- ['@string.documentation'] = { fg = "#697077" },
-- }


  -- Float = { links to Number },
  -- PreCondit = { links to PreProc },
  -- Delimiter = { links to Special },
  -- SpellBad = { undercurl=true, guisp=Red },
  -- SpellCap = { undercurl=true, guisp=Blue },
  -- SpellRare = { undercurl=true, guisp=Magenta },
  -- SpellLocal = { undercurl=true, guisp=Cyan },
  -- Pmenu = { fg="#d0d0d0",  bg="#262626",  },
  -- PmenuSel = { fg="#3ddbd9",  bg="#393939",  },
  -- PmenuSbar = { fg="#d0d0d0",  bg="#262626",  },
  -- PmenuThumb = { fg="#3ddbd9",  bg="#393939",  },
  -- NormalFloat = { fg="#f2f2f2",  bg="#131313",  },
  -- Cursor = { fg="#161616",  bg="#d0d0d0",  },
  -- String = { fg="#fff600", bg="#333100" italic=true, },
  -- ['@string.documentation'] = { fg = "#697077", italic=true },
  -- Identifier = { fg="#d3ff3b" },
  -- Error = { fg="#ee5396",  bg="#262626",  },
  -- Todo = { fg="#42be65",  },
  -- String = { fg="#be95ff",  },
  -- Constant = { fg="#d0d0d0",  },
  -- Character = { fg="#be95ff",  },
  -- Number = { fg="#82cfff",  },
  -- Boolean = { fg="#78a9ff",  },
  -- Function = { fg="#3ddbd9",  },
  -- Identifier = { fg="#d0d0d0",  },
  -- Conditional = { fg="#78a9ff",  },
  -- Statement = { fg="#78a9ff",  },
  -- Repeat = { fg="#78a9ff",  },
  -- Label = { fg="#78a9ff",  },
  -- Operator = { fg="#78a9ff",  },
  -- Keyword = { fg="#ff79ff",  },
  -- Exception = { fg="#78a9ff",  },
  -- Include = { fg="#78a9ff",  },
  -- PreProc = { fg="#78a9ff",  },
  -- Define = { fg="#78a9ff",  },
  -- Macro = { fg="#08bdba",  },
  -- StorageClass = { fg="#78a9ff",  },
  -- Type = { fg="#78a9ff",  },
  -- Structure = { fg="#78a9ff",  },
  -- Typedef = { fg="#78a9ff",  },
  -- Tag = { fg="#d0d0d0",  },
  -- Special = { fg="#d0d0d0",  },
  -- SpecialChar = { fg="#d0d0d0",  },
  -- SpecialComment = { fg="#3ddbd9",  },
  -- Debug = { fg="#42be65",  },
  -- DiagnosticError = { fg="#ee5396",  },
  -- DiagnosticInfo = { fg="#78a9ff",  },
  -- DiagnosticHint = { fg="#d0d0d0",  },
  -- Comment = { italic=true, fg="#525252",  },
  -- BufferCurrent  xxx gui=bold,undercurl guifg=#1c1c1c guibg=#f0f0f0
  -- BufferCurrentIndex xxx guifg=#f0f0f0 guibg=#1c1c1c
  --   BufferCurrentMod xxx gui=bold guifg=#ffff00
  --   BufferCurrentSign xxx guifg=#dfdfdf guibg=#1c1c1c
  --   BufferVisible  xxx gui=bold guifg=#505050 guibg=#252525
  --   BufferVisibleSign xxx gui=bold guifg=#505050 guibg=#252525
  --   BufferVisibleIndex xxx gui=bold guifg=#404040 guibg=#252525
  --   BufferVisibleMod xxx guifg=#404040 guibg=#252525
  --   BufferInactive xxx guifg=#505050 guibg=#1d1d1d
  --   BufferInactiveSign xxx guifg=#404040 guibg=#1d1d1d
  --   BufferInactiveIndex xxx guifg=#353535 guibg=#1d1d1d
  --   BufferInactiveMod xxx guifg=#353535 guibg=#1d1d1d
  -- BufferLineDevIconSh xxx guifg=#666666 guibg=#1d1d1d
  -- BufferLineDevIconVim xxx guibg=#1d1d1d
  -- BufferLineDevIconVimInactive xxx guifg=#248546 guibg=#1d1d1d
  -- BufferLineBufferSelected xxx cterm=bold gui=bold guifg=#9e9e9e guibg=#282828
  -- BufferLineHintSelected xxx cterm=bold,italic gui=bold,italic guifg=#ffff00 guibg=#1c1c1c guisp=#ffff00
  --   BufferLineBuffer xxx guifg=#404040 guibg=#1d1d1d
  --   BufferLineCloseButtonSelected xxx guifg=#ffffff guibg=#1c1c1c
  --   BufferLineError xxx guifg=#404040 guibg=#1d1d1d guisp=#ff0000
  --   BufferLineHint xxx guifg=#404040 guibg=#1d1d1d guisp=#ffff00
  --   BufferLineOffsetSeparator xxx guifg=#303030 guibg=#0f0f0f
  --   BufferLinePickVisible xxx cterm=bold,italic gui=bold,italic guifg=#ff0000 guibg=#191919
  --   BufferLinePickSelected xxx cterm=bold,italic gui=bold,italic guifg=#ff0000 guibg=#1c1c1c
  --   BufferLineTabSeparatorSelected xxx guifg=#0f0f0f guibg=#1c1c1c
  --   BufferLineTabSeparator xxx guifg=#0f0f0f guibg=#1d1d1d
  --   BufferLineSeparatorVisible xxx guifg=#0f0f0f guibg=#191919
  --   BufferLineSeparatorSelected xxx guifg=#0f0f0f guibg=#1c1c1c
  --   BufferLineDuplicate xxx cterm=italic gui=italic guifg=#3c3c3c guibg=#1d1d1d
  --   BufferLineDuplicateVisible xxx cterm=italic gui=italic guifg=#3c3c3c guibg=#191919
  --   BufferLineDuplicateSelected xxx cterm=italic gui=italic guifg=#3c3c3c guibg=#1c1c1c
  --   BufferLineTab  xxx guifg=#404040 guibg=#1d1d1d
  --   BufferLineErrorSelected xxx cterm=bold,italic gui=bold,italic guifg=#ff0000 guibg=#1c1c1c guisp=#ff0000
  --   BufferLineErrorVisible xxx guifg=#404040 guibg=#191919
  -- BufferLineWarningSelected xxx cterm=bold,italic gui=bold,italic guifg=#ffa500 guibg=#1c1c1c guisp=#ffa500
  -- BufferLineWarningVisible xxx guifg=#404040 guibg=#191919
  -- BufferLineInfoSelected xxx cterm=bold,italic gui=bold,italic guifg=#add8e6 guibg=#1c1c1c guisp=#add8e6
  -- BufferLineInfoVisible xxx guifg=#404040 guibg=#191919
  -- BufferLinePick xxx cterm=bold,italic gui=bold,italic guifg=#ff0000 guibg=#1d1d1d
  -- BufferLineInfo xxx guifg=#404040 guibg=#1d1d1d guisp=#add8e6
  -- BufferLineHintVisible xxx guifg=#404040 guibg=#191919
  -- BufferLineBufferVisible xxx guifg=#404040 guibg=#1d1d1d
  -- BufferLineCloseButtonVisible xxx guifg=#404040 guibg=#191919
  -- BufferLineWarning xxx guifg=#404040 guibg=#1d1d1d guisp=#ffa500
  -- BufferLineTabClose xxx guifg=#404040 guibg=#1d1d1d
  -- BufferLineTabSelected xxx guifg=#66d9ef guibg=#1c1c1c
  -- BufferLineGroupLabel xxx guifg=#0f0f0f guibg=#404040
  -- BufferLineGroupSeparator xxx guifg=#404040 guibg=#0f0f0f
  -- BufferLineIndicatorVisible xxx guifg=#191919 guibg=#191919

  -- NotifyBackground                       ={ guibg="#1c1c1c" }, -- NotifyBackground xxx links to Normal
  -- WinBarNC = { links to WinBar },
  -- lCursor = { fg=bg bg=fg },
  -- MsgSeparator = { links to StatusLine },
  -- Search = { bg="#00CCFF", fg="#1c1c1c", bold=true },
  -- IncSearch = { bg="#FF00FF", fg="#1c1c1c", reverse=true, underline=true, bold=true },
  -- IncSearch = {bold=true, underline=true, reverse=true, fg="#1c1c1c",  bg="#ff00ff",  },
  -- Normal = { fg="#bdbdbd", bold=false, italic=false },
  -- NotifyBackground                       ={ guibg="#1c1c1c" }, -- NotifyBackground xxx links to Normal
  -- WinBarNC = { links to WinBar },
  -- FloatTitle = { links to Title },
  -- PmenuKind = { links to Pmenu },
  -- PmenuKindSel = { links to PmenuSel },
  -- PmenuExtra = { links to Pmenu },
  -- PmenuExtraSel = { links to PmenuSel },
  -- TabLine = { links to StatusLineNC },
  -- TabLineSel = { links to StatusLine },
  -- TabLineFill = { links to TabLine },
  -- Whitespace = { links to NonText },
  -- Float = { links to Number },
  -- PreCondit = { links to PreProc },
  -- Delimiter = { links to Special },
  -- DiagnosticWarn = { fg="#ffb53d",  },
  -- DiagnosticOk = { fg=LightGreen },

  --
  -- NvimTreeEmptyFolderName = { fg="#82cfff",  },
  -- NvimTreeFolderIcon = { fg="#ff7eb6",  },
  -- NvimTreeFolderName = { fg="#78a9ff",  },
  -- NvimTreeImageFile = { fg="#ff7eb6",  },
  -- NvimTreeOpenedFolderName = { fg="#82cfff",  },
  -- diffAdded = { fg="#08bdba",  },
  -- diffChanged = { fg="#78a9ff",  },
  -- IlluminatedWordText = { fg="#ff5252",  bg="#333333",  },
  -- LspReferenceText = { bg="#525252",  },
  -- TelescopeNormal = { bg="#131313",  },
  -- TelescopeBorder = { fg="#131313",  bg="#131313",  },
  -- IlluminatedWordWrite = { fg="#bdbdbd",  bg="#252525",  },
  -- LspReferenceWrite = { bg="#525252",  },
  -- IlluminatedWordRead = { fg="#ffffff",  bg="#333333",  },
  -- LspReferenceRead = { bg="#525252",  },
  -- diffRemoved = { fg="#ee5396",  },
  -- CmpItemKindUnit = { fg="#262626",  bg="#42be65",  },
  -- CmpItemKindText = { fg="#262626",  bg="#78a9ff",  },
  -- CmpItemKindKeyword = { fg="#262626",  bg="#78a9ff",  },
  -- CmpItemKindFolder = { fg="#262626",  bg="#42be65",  },
  -- BufferLineDiagnosticVisible = { bold=true, fg="#ee5396",  },
  -- BufferLineDiagnostic = { bold=true, fg="#ee5396",  },
  -- jukit_textcell_bg_colors = { bg="#333333",  },
  -- TelescopeResultsBorder = { links to TelescopeBorder },
  -- TelescopePromptBorder = { fg="#393939",  bg="#393939",  },
  -- TelescopeResultsNormal = { links to TelescopeNormal },
  -- TelescopePromptNormal = { fg="#f2f2f2",  bg="#393939",  },
  -- TelescopeMultiIcon = { links to Identifier },
  -- TelescopeMultiSelection = { links to Type },
  -- TelescopeSelectionCaret = { links to TelescopeSelection },
  -- TelescopeSelection = { bg="#393939",  },
  -- TelescopePreviewBorder = { links to TelescopeBorder },
  -- TelescopeResultsTitle = { fg="#131313",  bg="#131313",  },
  -- TelescopePreviewTitle = { fg="#393939",  bg="#ff7eb6",  },
  -- TelescopeMatching = { cterm=bold,italic gui=bold,italic fg="#3ddbd9",  },
  -- TelescopePromptPrefix = { fg="#3ddbd9",  bg="#393939",  },
  -- TelescopePreviewLine = { bg="#262626",  },
  -- TelescopePreviewMatch = { links to Search },
  -- TelescopeResultsDiffUntracked = { links to NonText },
  -- TelescopePromptTitle = { fg="#393939",  bg="#33b1ff",  },
  -- DevIconRs = { ctermfg=216 fg="#dea584",  },
  -- DevIconRake = { ctermfg=52 fg="#701516",  },
  -- DevIconGemspec = { ctermfg=52 fg="#701516",  },
  -- DevIconRss = { ctermfg=215 fg="#fb9d3b",  },
  -- DevIconConfigRu = { ctermfg=52 fg="#701516",  },
  -- DevIconGDScript = { ctermfg=66 fg="#6d8086",  },
  -- DevIconTex = { ctermfg=22 fg="#3d6117",  },
  -- DevIconClojureDart = { ctermfg=74 fg="#519aba",  },
  -- DevIconQuery = { ctermfg=107 fg="#90a850",  },
  -- DevIconLess = { ctermfg=54 fg="#563d7c",  },
  -- DevIconEex = { ctermfg=140 fg="#a074c4",  },
  -- DevIconNim = { ctermfg=220 fg="#f3d400",  },
  -- DevIconElm = { ctermfg=74 fg="#519aba",  },
  -- DevIconDockerfile = { ctermfg=68 fg="#458ee6",  },
  -- DevIconGitLogo = { ctermfg=196 fg="#f14c28",  },
  -- DevIconCsh = { ctermfg=240 fg="#4d5a5e",  },
  -- DevIconCpp = { ctermfg=74 fg="#519aba",  },
  -- DevIconConf = { ctermfg=66 fg="#6d8086",  },
  -- DevIconHpp = { ctermfg=140 fg="#a074c4",  },
  -- DevIconDart = { ctermfg=25 fg="#03589c",  },
  -- DevIconD = { ctermfg=28 fg="#427819",  },
  -- DevIconHaml = { ctermfg=255 fg="#eaeae1",  },
  -- DevIconGo = { ctermfg=74 fg="#519aba",  },
  -- DevIconClojure = { ctermfg=113 fg="#8dc149",  },
  -- DevIconFavicon = { ctermfg=185 fg="#cbcb41",  },
  -- DevIconPdf = { ctermfg=124 fg="#b30b00",  },
  -- DevIconPrisma = { ctermfg=231 fg="#ffffff",  },
  -- DevIconCMake = { ctermfg=66 fg="#6d8086",  },
  -- DevIconGraphQL = { ctermfg=199 fg="#e535ab",  },
  -- DevIconPsScriptModulefile = { ctermfg=68 fg="#6975c4",  },
  -- DevIconVimrc = { ctermfg=28 fg="#019833",  },
  -- DevIconGvimrc = { ctermfg=28 fg="#019833",  },
  -- DevIconCs = { ctermfg=58 fg="#596706",  },
  -- DevIconPackageJson = { fg="#e8274b",  },
  -- DevIconTextResource = { ctermfg=185 fg="#cbcb41",  },
  -- DevIconTextScene = { ctermfg=140 fg="#a074c4",  },
  -- DevIconMotoko = { ctermfg=135 fg="#9772fb",  },
  -- DevIconMixLock = { ctermfg=140 fg="#a074c4",  },
  -- DevIconFsx = { ctermfg=74 fg="#519aba",  },
  -- DevIconSettingsJson = { ctermfg=98 fg="#854cc7",  },
  -- DevIconFsi = { ctermfg=74 fg="#519aba",  },
  -- DevIconNPMIgnore = { ctermfg=197 fg="#e8274b",  },
  -- DevIconAwk = { ctermfg=240 fg="#4d5a5e",  },
  -- DevIconFish = { ctermfg=240 fg="#4d5a5e",  },
  -- DevIconPng = { ctermfg=140 fg="#a074c4",  },
  -- DevIconOPUS = { ctermfg=208 fg="#f88a02",  },
  -- DevIconPyo = { ctermfg=222 fg="#ffe291",  },
  -- DevIconOpenTypeFont = { ctermfg=255 fg="#ececec",  },
  -- DevIconTcl = { ctermfg=25 fg="#1e5cb3",  },
  -- DevIconCoffee = { ctermfg=185 fg="#cbcb41",  },
  -- DevIconXlsx = { ctermfg=29 fg="#207245",  },
  -- DevIconHbs = { ctermfg=202 fg="#f0772b",  },
  -- DevIconGruntfile = { ctermfg=166 fg="#e37933",  },
  -- DevIconScala = { ctermfg=167 fg="#cc3e44",  },
  -- DevIconLicense = { ctermfg=185 fg="#cbcb41",  },
  -- DevIconFortran = { ctermfg=97 fg="#734f96",  },
  -- DevIconBashProfile = { ctermfg=113 fg="#89e051",  },
  -- DevIconBash = { ctermfg=113 fg="#89e051",  },
  -- DevIconR = { ctermfg=29 fg="#358a5b",  },
  -- DevIconRproj = { ctermfg=29 fg="#358a5b",  },
  -- DevIconSql = { ctermfg=188 fg="#dad8d8",  },
  -- DevIconSuo = { ctermfg=166 fg="#e37933",  },
  -- DevIconJpg = { ctermfg=140 fg="#a074c4",  },
  -- DevIconJpeg = { ctermfg=140 fg="#a074c4",  },
  -- DevIconCson = { ctermfg=185 fg="#cbcb41",  },
  -- DevIconPsScriptfile = { ctermfg=68 fg="#4273ca",  },
  -- DevIconCp = { ctermfg=74 fg="#519aba",  },
  -- DevIconXml = { ctermfg=166 fg="#e37933",  },
  -- DevIconWebp = { ctermfg=140 fg="#a074c4",  },
  -- DevIconXcPlayground = { ctermfg=166 fg="#e37933",  },
  -- DevIconXls = { ctermfg=29 fg="#207245",  },
  -- DevIconGulpfile = { ctermfg=167 fg="#cc3e44",  },
  -- DevIconBmp = { ctermfg=140 fg="#a074c4",  },
  -- DevIconProcfile = { ctermfg=140 fg="#a074c4",  },
  -- DevIconWebpack = { ctermfg=74 fg="#519aba",  },
  -- DevIconMakefile = { ctermfg=66 fg="#6d8086",  },
  -- DevIconBrewfile = { ctermfg=52 fg="#701516",  },
  -- DevIconSlim = { ctermfg=196 fg="#e34c26",  },
  -- DevIconMustache = { ctermfg=166 fg="#e37933",  },
  -- DevIconMdx = { ctermfg=74 fg="#519aba",  },
  -- DevIconPyc = { ctermfg=222 fg="#ffe291",  },
  -- DevIconPsd = { ctermfg=74 fg="#519aba",  },
  -- DevIconStyl = { ctermfg=113 fg="#8dc149",  },
  -- DevIconPsb = { ctermfg=74 fg="#519aba",  },
  -- DevIconFsharp = { ctermfg=74 fg="#519aba",  },
  -- DevIconPpt = { ctermfg=214 fg="#cb4a32",  },
  -- DevIconGodotProject = { ctermfg=66 fg="#6d8086",  },
  -- DevIconLuau = { ctermfg=74 fg="#51a0cf",  },
  -- DevIconDrools = { ctermfg=217 fg="#ffafaf",  },
  -- DevIconGitCommit = { ctermfg=239 fg="#41535b",  },
  -- DevIconBinaryGLTF = { ctermfg=214 fg="#ffb13b",  },
  -- DevIconErl = { ctermfg=163 fg="#b83998",  },
  -- DevIconPl = { ctermfg=74 fg="#519aba",  },
  -- DevIconRlib = { ctermfg=216 fg="#dea584",  },
  -- DevIconPackedResource = { ctermfg=66 fg="#6d8086",  },
  -- DevIconFsscript = { ctermfg=74 fg="#519aba",  },
  -- DevIconBazelWorkspace = { ctermfg=113 fg="#89e051",  },
  -- DevIconEjs = { ctermfg=185 fg="#cbcb41",  },
  -- DevIconMaterial = { ctermfg=163 fg="#b83998",  },
  -- DevIconTsx = { ctermfg=26 fg="#1354bf",  },
  -- DevIconJson5 = { ctermfg=185 fg="#cbcb41",  },
  -- DevIconBazelBuild = { ctermfg=113 fg="#89e051",  },
  -- DevIconIni = { ctermfg=66 fg="#6d8086",  },
  -- DevIconJavaScriptReactSpec = { ctermfg=45 fg="#20c2e3",  },
  -- DevIconEslintrc = { ctermfg=56 fg="#4b32c3",  },
  -- DevIconTs = { ctermfg=74 fg="#519aba",  },
  -- DevIconJavaScriptReactTest = { ctermfg=45 fg="#20c2e3",  },
  -- DevIconToml = { ctermfg=66 fg="#6d8086",  },
  -- DevIconSpecJs = { ctermfg=185 fg="#cbcb41",  },
  -- DevIconTestJs = { ctermfg=185 fg="#cbcb41",  },
  -- DevIconSass = { ctermfg=204 fg="#f55385",  },
  -- DevIconCss = { ctermfg=75 fg="#42a5f5",  },
  -- DevIconVerilog = { ctermfg=28 fg="#019833",  },
  -- DevIconTypeScriptReactSpec = { ctermfg=26 fg="#1354bf",  },
  -- DevIconTypeScriptReactTest = { ctermfg=26 fg="#1354bf",  },
  -- DevIconSpecTs = { ctermfg=74 fg="#519aba",  },
  -- DevIconTestTs = { ctermfg=74 fg="#519aba",  },
  -- DevIconVHDL = { ctermfg=28 fg="#019833",  },
  -- DevIconVala = { ctermfg=91 fg="#7239b3",  },
  -- DevIconRb = { ctermfg=52 fg="#701516",  },
  -- DevIconTwig = { ctermfg=113 fg="#8dc149",  },
  -- DevIconEdn = { ctermfg=74 fg="#519aba",  },
  -- DevIconKsh = { ctermfg=240 fg="#4d5a5e",  },
  -- DevIconSig = { ctermfg=166 fg="#e37933",  },
  -- DevIconPp = { fg="#ffa61a",  },
  -- DevIconsbt = { ctermfg=167 fg="#cc3e44",  },
  -- DevIconTerraform = { ctermfg=93 fg="#5f43e9",  },
  -- DevIconTxt = { ctermfg=113 fg="#89e051",  },
  -- DevIconSvelte = { ctermfg=196 fg="#ff3e00",  },
  -- DevIconDiff = { ctermfg=239 fg="#41535b",  },
  -- DevIconCobol = { ctermfg=25 fg="#005ca5",  },
  -- DevIconXul = { ctermfg=166 fg="#e37933",  },
  -- DevIconBzl = { ctermfg=113 fg="#89e051",  },
  -- DevIconPm = { ctermfg=74 fg="#519aba",  },
  -- DevIconTerminal = { ctermfg=34 fg="#31b53e",  },
  -- DevIconJson = { ctermfg=185 fg="#cbcb41",  },
  -- DevIconVim = { ctermfg=28 fg="#019833",  },
  -- DevIconCPlusPlus = { ctermfg=204 fg="#f34b7d",  },
  -- DevIconTFVars = { ctermfg=93 fg="#5f43e9",  },
  -- DevIconConfiguration = { ctermfg=255 fg="#ececec",  },
  -- DevIconScss = { ctermfg=204 fg="#f55385",  },
  -- DevIconErb = { ctermfg=214 fg="#701516",  },
  -- DevIconHrl = { ctermfg=163 fg="#b83998",  },
  -- DevIconEpp = { fg="#ffa61a",  },
  -- DevIconSystemVerilog = { ctermfg=28 fg="#019833",  },
  -- DevIconSvg = { ctermfg=214 fg="#ffb13b",  },
  -- DevIconJl = { ctermfg=133 fg="#a270ba",  },
  -- DevIconLeex = { ctermfg=140 fg="#a074c4",  },
  -- DevIconZshprofile = { ctermfg=113 fg="#89e051",  },
  -- DevIconLhs = { ctermfg=140 fg="#a074c4",  },
  -- DevIconFs = { ctermfg=74 fg="#519aba",  },
  -- DevIconHxx = { ctermfg=140 fg="#a074c4",  },
  -- DevIconCjs = { ctermfg=185 fg="#cbcb41",  },
  -- DevIconJs = { ctermfg=185 fg="#cbcb41",  },
  -- DevIconMjs = { ctermfg=185 fg="#f1e05a",  },
  -- DevIconZshrc = { ctermfg=113 fg="#89e051",  },
  -- DevIconWebmanifest = { ctermfg=185 fg="#f1e05a",  },
  -- DevIconAi = { ctermfg=185 fg="#cbcb41",  },
  -- DevIconBat = { ctermfg=191 fg="#c1f12e",  },
  -- DevIconDb = { ctermfg=188 fg="#dad8d8",  },
  -- DevIconImportConfiguration = { ctermfg=255 fg="#ececec",  },
  -- DevIconJsx = { ctermfg=45 fg="#20c2e3",  },
  -- DevIconMl = { ctermfg=166 fg="#e37933",  },
  -- DevIconMli = { ctermfg=166 fg="#e37933",  },
  -- DevIconCrystal = { ctermfg=251 fg="#c8c8c8",  },
  -- DevIconVue = { ctermfg=113 fg="#8dc149",  },
  -- DevIconNPMrc = { ctermfg=197 fg="#e8274b",  },
  -- DevIconGitAttributes = { ctermfg=239 fg="#41535b",  },
  -- DevIconPy = { ctermfg=214 fg="#ffbc03",  },
  -- DevIconC = { ctermfg=111 fg="#599eff",  },
  -- DevIconDesktopEntry = { ctermfg=54 fg="#563d7c",  },
  -- DevIconYml = { ctermfg=66 fg="#6d8086",  },
  -- DevIconLua = { ctermfg=74 fg="#51a0cf",  },
  -- DevIconHeex = { ctermfg=140 fg="#a074c4",  },
  -- DevIconKotlin = { ctermfg=99 fg="#7f52ff",  },
  -- DevIconKotlinScript = { ctermfg=99 fg="#7f52ff",  },
  -- DevIconSh = { ctermfg=240 fg="#4d5a5e",  },
  -- DevIconZsh = { ctermfg=113 fg="#89e051",  },
  -- DevIconExs = { ctermfg=140 fg="#a074c4",  },
  -- DevIconPackageLockJson = { fg="#7a0d21",  },
  -- DevIconDsStore = { ctermfg=239 fg="#41535b",  },
  -- DevIconDump = { ctermfg=188 fg="#dad8d8",  },
  -- DevIconBashrc = { ctermfg=113 fg="#89e051",  },
  -- DevIconCsv = { ctermfg=113 fg="#89e051",  },
  -- DevIconGitIgnore = { ctermfg=239 fg="#41535b",  },
  -- DevIconReScript = { ctermfg=167 fg="#cc3e44",  },
  -- DevIconLog = { ctermfg=231 fg="#ffffff",  },
  -- DevIconWasm = { ctermfg=62 fg="#5c4cdb",  },
  -- DevIconH = { ctermfg=140 fg="#a074c4",  },
  -- DevIconYaml = { ctermfg=66 fg="#6d8086",  },
  -- DevIconBabelrc = { ctermfg=185 fg="#cbcb41",  },
  -- DevIconPsManifestfile = { ctermfg=68 fg="#6975c4",  },
  -- DevIconHs = { ctermfg=140 fg="#a074c4",  },
  -- DevIconZig = { ctermfg=172 fg="#f69a1b",  },
  -- DevIconRakefile = { ctermfg=52 fg="#701516",  },
  -- DevIconHh = { ctermfg=140 fg="#a074c4",  },
  -- DevIconSln = { ctermfg=98 fg="#854cc7",  },
  -- DevIconCMakeLists = { ctermfg=66 fg="#6d8086",  },
  -- DevIconZshenv = { ctermfg=113 fg="#89e051",  },
  -- DevIconOrgMode = { ctermfg=73 fg="#77aa99",  },
  -- DevIconIco = { ctermfg=185 fg="#cbcb41",  },
  -- DevIconSml = { ctermfg=166 fg="#e37933",  },
  -- DevIconGitlabCI = { ctermfg=196 fg="#e24329",  },
  -- DevIconVagrantfile = { ctermfg=27 fg="#1563ff",  },
  -- DevIconClojureJS = { ctermfg=74 fg="#519aba",  },
  -- DevIconClojureC = { ctermfg=113 fg="#8dc149",  },
  -- DevIconLiquid = { ctermfg=106 fg="#95bf47",  },
  -- DevIconEnv = { ctermfg=227 fg="#faf743",  },
  -- DevIconSolidity = { ctermfg=74 fg="#519aba",  },
  -- DevIconGitModules = { ctermfg=239 fg="#41535b",  },
  -- DevIconGitConfig = { ctermfg=239 fg="#41535b",  },
  -- DevIconDocx = { ctermfg=26 fg="#185abd",  },
  -- DevIconRmd = { ctermfg=74 fg="#519aba",  },
  -- DevIconDoc = { ctermfg=26 fg="#185abd",  },
  -- DevIconNix = { ctermfg=110 fg="#7ebae4",  },
  -- DevIconEx = { ctermfg=140 fg="#a074c4",  },
  -- DevIconGif = { ctermfg=140 fg="#a074c4",  },
  -- DevIconGemfile = { ctermfg=52 fg="#701516",  },
  -- DevIconMarkdown = { ctermfg=74 fg="#519aba",  },
  -- DevIconFennel = { ctermfg=230 fg="#fff3d7",  },
  -- DevIconPhp = { ctermfg=140 fg="#a074c4",  },
  -- DevIconNodeModules = { ctermfg=197 fg="#e8274b",  },
  -- DevIconHtml = { ctermfg=196 fg="#e44d26",  },
  -- DevIconDropbox = { ctermfg=27 fg="#0061fe",  },
  -- DevIconPyd = { ctermfg=222 fg="#ffe291",  },
  -- DevIconProlog = { ctermfg=179 fg="#e4b854",  },
  -- DevIconSwift = { ctermfg=166 fg="#e37933",  },
  -- DevIconBazel = { ctermfg=113 fg="#89e051",  },
  -- DevIconTor = { ctermfg=74 fg="#519aba",  },
  -- DevIconCxx = { ctermfg=74 fg="#519aba",  },
  -- DevIconJava = { ctermfg=167 fg="#cc3e44",  },
  -- DevIconMint = { ctermfg=108 fg="#87c095",  },
  -- DevIconMd = { ctermfg=231 fg="#ffffff",  },
  -- DevIconHtm = { ctermfg=196 fg="#e34c26",  },
  -- DevIconReScriptInterface = { ctermfg=204 fg="#f55385",  },
  -- DevIconScheme = { ctermfg=16 fg="#000000",  },
  -- CmpItemAbbr = { fg="#adadad",  },
  -- CmpItemAbbrDefault = { fg="#d0d0d0",  },
  -- CmpItemAbbrDeprecatedDefault = { fg="#525252",  },
  -- CmpItemAbbrMatchDefault = { fg="#d0d0d0",  },
  -- CmpItemAbbrMatchFuzzyDefault = { fg="#d0d0d0",  },
  -- CmpItemKind = { links to CmpItemKindDefault },
  -- CmpItemKindDefault = { fg="#d0d0d0",  },
  -- CmpItemMenu = { cterm=italic italic=true fg="#d0d0d0",  },
  -- CmpItemMenuDefault = { fg="#d0d0d0",  },
  -- CmpItemKindTextDefault = { links to CmpItemKind },
  -- CmpItemKindMethodDefault = { links to CmpItemKind },
  -- CmpItemKindFieldDefault = { links to CmpItemKind },
  -- CmpItemKindVariableDefault = { links to CmpItemKind },
  -- CmpItemKindModuleDefault = { links to CmpItemKind },
  -- CmpItemKindValueDefault = { links to CmpItemKind },
  -- CmpItemKindEnumDefault = { links to CmpItemKind },
  -- CmpItemKindColor = { fg="#262626",  bg="#3ddbd9",  },
  -- CmpItemKindColorDefault = { links to CmpItemKind },
  -- CmpItemKindTypeParameterDefault = { links to CmpItemKind },
  -- CmpItemKindEnumMemberDefault = { links to CmpItemKind },
  -- CmpItemKindStructDefault = { links to CmpItemKind },
  -- CmpItemKindConstructorDefault = { links to CmpItemKind },
  -- CmpItemKindClassDefault = { links to CmpItemKind },
  -- CmpItemKindReference = { fg="#262626",  bg="#ee5396",  },
  -- CmpItemKindReferenceDefault = { links to CmpItemKind },
  -- CmpItemKindFileDefault = { links to CmpItemKind },
  -- CmpItemKindPropertyDefault = { links to CmpItemKind },
  -- CmpItemKindKeywordDefault = { links to CmpItemKind },
  -- CmpItemKindUnitDefault = { links to CmpItemKind },
  -- CmpItemKindOperatorDefault = { links to CmpItemKind },
  -- CmpItemKindFunctionDefault = { links to CmpItemKind },
  -- CmpItemKindFolderDefault = { links to CmpItemKind },
  -- CmpItemKindSnippet = { fg="#262626",  bg="#42be65",  },
  -- CmpItemKindSnippetDefault = { links to CmpItemKind },
  -- CmpItemKindInterfaceDefault = { links to CmpItemKind },
  -- CmpItemKindConstantDefault = { links to CmpItemKind },
  -- CmpItemKindEventDefault = { links to CmpItemKind },
  -- NullLsInfoTitle = { links to Type },
  -- NullLsInfoHeader = { links to Label },
  -- NullLsInfoBorder = { links to NormalFloat },
  -- NullLsInfoSources = { links to Title },
  -- debugPC = {  },
  -- DapUINormal = { links to Normal },
  -- DapUIVariable = { links to Normal },
  -- DapUIScope = { fg="#00f1f5",  },
  -- DapUIType = { fg="#d484ff",  },
  -- DapUIValue = { links to Normal },
  -- DapUIModifiedValue = { bold=true, fg="#00f1f5",  },
  -- DapUIDecoration = { fg="#00f1f5",  },
  -- DapUIThread = { fg="#a9ff68",  },
  -- DapUIStoppedThread = { fg="#00f1f5",  },
  -- DapUIFrameName = { links to Normal },
  -- DapUISource = { fg="#d484ff",  },
  -- DapUILineNumber = { fg="#00f1f5",  },
  -- DapUIFloatNormal = { links to NormalFloat },
  -- DapUIFloatBorder = { fg="#00f1f5",  },
  -- DapUIWatchesEmpty = { fg="#f70067",  },
  -- DapUIWatchesValue = { fg="#a9ff68",  },
  -- DapUIWatchesError = { fg="#f70067",  },
  -- DapUIBreakpointsPath = { fg="#00f1f5",  },
  -- DapUIBreakpointsInfo = { fg="#a9ff68",  },
  -- DapUIBreakpointsCurrentLine = { bold=true, fg="#a9ff68",  },
  -- DapUIBreakpointsLine = { links to DapUILineNumber },
  -- DapUIBreakpointsDisabledLine = { fg="#424242",  },
  -- DapUICurrentFrameName = { links to DapUIBreakpointsCurrentLine },
  -- DapUIStepOver = { fg="#00f1f5",  },
  -- DapUIStepInto = { fg="#00f1f5",  },
  -- DapUIStepBack = { fg="#00f1f5",  },
  -- DapUIStepOut = { fg="#00f1f5",  },
  -- DapUIStop = { fg="#f70067",  },
  -- DapUIPlayPause = { fg="#a9ff68",  },
  -- DapUIRestart = { fg="#a9ff68",  },
  -- DapUIUnavailable = { fg="#424242",  },
  -- DapUIWinSelect = { ctermfg=14 bold=true, fg="#00f1f5",  },
  -- DapUIEndofBuffer = { links to EndOfBuffer },

  -- DapUINormalNC = { gui= },
  -- DapUIPlayPauseNC = { gui= fg="#a9ff68",  },
  -- DapUIRestartNC = { gui= fg="#a9ff68",  },
  -- DapUIStopNC = { gui= fg="#f70067",  },
  -- DapUIUnavailableNC = { gui= fg="#424242",  },
  -- DapUIStepOverNC = { gui= fg="#00f1f5",  },
  -- DapUIStepIntoNC = { gui= fg="#00f1f5",  },
  -- DapUIStepBackNC = { gui= fg="#00f1f5",  },
  -- DapUIStepOutNC = { gui= fg="#00f1f5",  },
  -- rainbowcol1 = { ctermfg=9 fg="#cc241d",  },
  -- rainbowcol2 = { ctermfg=10 fg="#a89984",  },
  -- rainbowcol3 = { ctermfg=11 fg="#b16286",  },
  -- rainbowcol4 = { ctermfg=12 fg="#d79921",  },
  -- rainbowcol5 = { ctermfg=13 fg="#689d6a",  },
  -- rainbowcol6 = { ctermfg=14 fg="#d65d0e",  },
  -- rainbowcol7 = { ctermfg=15 fg="#458588",  },
  -- IndentBlanklineContextChar = { cterm=nocombine gui=nocombine fg="#78a9ff",  },
  -- IndentBlanklineContextStart = { underline=true, guisp="#78a9ff",  },
  -- IndentBlanklineChar = { cterm=nocombine gui=nocombine fg="#393939",  },
  -- BufferLineBufferSelected = { bold=true, fg="#9e9e9e",  bg="#282828",  },
  -- NeoTreeModified = { fg="#ae81ff",  },
  -- NeoTreeGitConflict = { bold=true, fg="#ffff00",  },
  -- NeoTreeGitUntracked = { fg="#666666",  },
  -- NeoTreeGitUnstaged = { fg="#939393",  },
  -- termcolorcode_cfg_13_gfg_FF55FF = { fg="#ff55ff",  },
  -- termcolorcode_cfg_10_gfg_55FF55 = { fg="#55ff55",  },
  -- termcolorcode_cfg_3_gfg_AA5500 = { fg="#ffff00",  },
  -- termcolorcode_c_bold_cfg_5_g_bold_gfg_AA00AA = { fg="#d4bbff",  },
  -- termcolorcode_cfg_2_gfg_00AA00 = { fg="#00aa00",  },
  -- termcolorcode_cfg_5_gfg_AA00AA = { fg="#ff79ff",  },
  -- termcolorcode_cfg_39_gfg_00AFFF = { fg="#00afff",  },
  -- termcolorcode_cfg_37_gfg_00AFAF = { fg="#46d9ff",  },
  -- termcolorcode_cfg_208_gfg_FF8700 = { fg="#ff8700",  },
  -- termcolorcode_cfg_246_gfg_949494 = { fg="#838383",  },
  -- TerminalCSIColorCode = { fg="#00ccff",  },
  -- @string.documentation = { cterm=italic italic=true fg="#697077",  },
  -- LspSignatureActiveParameter = { fg="#3ddbd9",  },
  -- HopNextKey = { ctermfg=198 bold=true, fg="#ff007c",  },
  -- HopNextKey1 = { ctermfg=45 bold=true, fg="#00dfff",  },
  -- HopNextKey2 = { ctermfg=33 fg="#2b8db3",  },
  -- HopUnmatched = { ctermfg=242 fg="#666666",  bg=bg guisp="#666666",  },
  -- markdownH1 = { fg="#ee5396",  },
  -- markdownH2 = { links to markdownH1 },
  -- markdownH3 = { links to markdownH1 },
  -- markdownH4 = { links to markdownH1 },
  -- markdownH5 = { links to markdownH1 },
  -- markdownH6 = { links to markdownH1 },
  -- markdownBlockquote = { fg="#3ddbd9",  },
  -- markdownListMarker = { fg="#3ddbd9",  },
  -- markdownOrderedListMarker = { fg="#3ddbd9",  },
  -- markdownCodeBlock = { links to markdownCode },
  -- markdownRule = { links to Comment },
  -- markdownLineBreak = {  },
  -- markdownLinkText = { links to htmlLink },
  -- markdownItalic = { links to Italic },
  -- markdownBold = { links to Bold },
  -- markdownCode = { links to String },
  -- markdownEscape = { links to Special },
  -- markdownError = { links to Error },
  -- markdownHeadingRule = { links to markdownH1 },
  -- markdownAutomaticLink = { links to markdownUrl },
  -- Stl6d8086_NONE__ = { fg="#6d8086",  },
  -- Stlffff00_NONE__ = {  },
  -- Stl007dff_NONE__ = {  },
  -- TodoBgNOTE = { bold=true, fg="#000000",  bg="#d0d0d0",  },
  -- TodoFgNOTE = { fg="#d0d0d0",  },
  -- TodoSignNOTE = { fg="#d0d0d0",  bg="#161616",  },
  -- TodoBgHACK = { bold=true, fg="#000000",  bg="#ffb53d",  },
  -- TodoFgHACK = { fg="#ffb53d",  },
  -- TodoSignHACK = { fg="#ffb53d",  bg="#161616",  },
  -- TodoBgPERF = { bold=true, fg="#000000",  bg="#d0d0d0",  },
  -- TodoFgPERF = { fg="#d0d0d0",  },
  -- TodoSignPERF = { fg="#d0d0d0",  bg="#161616",  },
  -- TodoBgTODO = { bold=true, fg="#000000",  bg="#78a9ff",  },
  -- TodoFgTODO = { fg="#78a9ff",  },
  -- TodoSignTODO = { fg="#78a9ff",  bg="#161616",  },
  -- TodoBgTEST = { bold=true, fg="#000000",  bg="#d0d0d0",  },
  -- TodoFgTEST = { fg="#d0d0d0",  },
  -- TodoSignTEST = { fg="#d0d0d0",  bg="#161616",  },
  -- TodoBgFIX = { bold=true, fg="#000000",  bg="#ee5396",  },
  -- TodoFgFIX = { fg="#ee5396",  },
  -- TodoSignFIX = { fg="#ee5396",  bg="#161616",  },
  -- TodoBgWARN = { bold=true, fg="#000000",  bg="#ffb53d",  },
  -- TodoFgWARN = { fg="#ffb53d",  },
  -- TodoSignWARN = { fg="#ffb53d",  bg="#161616",  },
  -- GitSignsStagedAdd = { gui= fg="#045e5d",  },
  -- GitSignsStagedChange = { gui= fg="#3c547f",  },
  -- GitSignsStagedDelete = { gui= fg="#77294b",  },
  -- GitSignsStagedChangedelete = { gui= fg="#3c547f",  },
  -- GitSignsStagedTopdelete = { gui= fg="#77294b",  },
  -- GitSignsStagedAddNr = { gui= fg="#045e5d",  },
  -- GitSignsStagedChangeNr = { gui= fg="#3c547f",  },
  -- GitSignsStagedDeleteNr = { gui= fg="#77294b",  },
  -- GitSignsStagedChangedeleteNr = { gui= fg="#3c547f",  },
  -- GitSignsStagedTopdeleteNr = { gui= fg="#77294b",  },
  -- GitSignsStagedAddLn = { gui= bg="#122f2f",  },
  -- GitSignsStagedChangeLn = { gui= bg="#222a39",  },
  -- GitSignsStagedChangedeleteLn = { gui= bg="#222a39",  },
  -- v2hexokinaseHighlightfdfdfd = { fg="#fdfdfd",  },
  -- v2hexokinaseHighlight1a8fff = { fg="#1a8fff",  },
  -- v2hexokinaseHighlightf8f8f8 = { fg="#f8f8f8",  },
  -- TooLong = { bg="#393939",  },
  -- Bold = { gui=bold },
  -- Italic = { cterm=italic italic=true },
  -- HealthError = { fg="#ee5396",  },
  -- @text.literal.commodity = { fg="#42be65",  },
  -- @number.date = { fg="#3ddbd9",  },
  -- @number.date.effective = { fg="#42be65",  },
  -- @number.interval = { fg="#78a9ff",  },
  -- @number.status = { fg="#ff7eb6",  },
  -- @number.quantity = { fg="#33b1ff",  },
  -- @number.quantity.negative = { fg="#ee5396",  },
  -- Decorator = { fg="#ff7eb6",  },
  -- helpSpecial = { fg="#78a9ff",  },
  -- helpHeadline = { fg="#ee5396",  },
  -- Delimeter = { fg="#ffffff",  },
  -- Stlee5396_NONE_bolditalic_ = { cterm=bold,italic gui=bold,italic fg="#ee5396",  },
  -- StlNONE_262626__ = { bg="#262626",  },
  -- Stl525252_262626__ = { fg="#525252",  bg="#262626",  },
  -- Stl262626_262626__ = { fg="#262626",  bg="#262626",  },
  -- Stl_262626__ = { bg="#262626",  },
  -- Stl161616_61afef__ = { fg="#161616",  bg="#61afef",  },
  -- Stl61afef_161616__ = { fg="#61afef",  bg="#161616",  },
  -- Stl78a9ff_161616_bold_ = { bold=true, fg="#78a9ff",  bg="#161616",  },
  -- Stl161616_161616__ = { fg="#161616",  bg="#161616",  },
  -- Stl6d8086_161616__ = { fg="#6d8086",  bg="#161616",  },
  -- Stld0d0d0_161616__ = { fg="#d0d0d0",  bg="#161616",  },
  -- StlNONE_161616_bold_ = { bold=true, bg="#161616",  },
  -- Stlbe95ff_161616__ = { fg="#be95ff",  bg="#161616",  },
  -- Stl78a9ff_161616__ = { fg="#78a9ff",  bg="#161616",  },
  -- Stl161616_ebae34__ = { fg="#161616",  bg="#ebae34",  },
  -- Stlebae34_161616__ = { fg="#ebae34",  bg="#161616",  },
  -- Stlee5396_NONE__ = { fg="#ee5396",  },
  -- Stl89e051_161616__ = { fg="#89e051",  bg="#161616",  },
  -- ['@reference'] = { fg="#d0d0d0",  },
  -- StatusReplace = { fg="#161616",  bg="#3ddbd9",  },
  -- StatusInsert = { fg="#161616",  bg="#ff7eb6",  },
  -- StatusVisual = { fg="#161616",  bg="#be95ff",  },
  -- StatusTerminal = { fg="#161616",  bg="#33b1ff",  },
  -- StatusNormal = { fg="#161616",  bg="#82cfff",  },
  -- StatusCommand = { fg="#161616",  bg="#42be65",  },
  -- StatusLineDiagnosticWarn = { bold=true, fg="#be95ff",  bg="#161616",  },
  -- StatusLineDiagnosticError = { bold=true, fg="#ee5396",  bg="#161616",  },
  -- NvimTreeWinSeparator = { fg="#161616",  bg="#161616",  },
  -- NvimTreeNormal = { fg="#d0d0d0",  bg="#161616",  },
  -- NeogitBranch = { fg="#ee5396",  },
  -- NeogitRemote = { fg="#78a9ff",  },
  -- NeogitHunkHeader = { fg="#d0d0d0",  bg="#393939",  },
  -- NeogitHunkHeaderHighlight = { fg="#d0d0d0",  bg="#525252",  },
  -- HydraRed = { fg="#ff7eb6",  },
  -- HydraBlue = { fg="#78a9ff",  },
  -- HydraAmaranth = { fg="#ee5396",  },
  -- HydraTeal = { fg="#3ddbd9",  },
  -- HydraHint = { bg="#131313",  },
  -- alpha1 = { fg="#525252",  },
  -- alpha2 = { fg="#d0d0d0",  },
  -- alpha3 = { fg="#525252",  },
  -- CodeBlock = { bg="#262626",  },
 -- }
  -- CmpItemKindVariable = { fg="#262626",  bg="#be95ff",  },
  -- CmpItemKindTypeParameter = { fg="#262626",  bg="#3ddbd9",  },
  -- CmpItemKindStruct = { fg="#262626",  bg="#33b1ff",  },
  -- CmpItemKindProperty = { fg="#262626",  bg="#ff7eb6",  },
  -- CmpItemKindModule = { fg="#262626",  bg="#33b1ff",  },
  -- CmpItemKindOperator = { fg="#262626",  bg="#33b1ff",  },
  -- CmpItemKindMethod = { fg="#262626",  bg="#82cfff",  },
  -- CmpItemKindValue = { fg="#262626",  bg="#82cfff",  },
  -- CmpItemKindInterface = { fg="#262626",  bg="#3ddbd9",  },
  -- CmpItemKindFunction = { fg="#262626",  bg="#33b1ff",  },
  -- CmpItemKindFile = { fg="#262626",  bg="#be95ff",  },
  -- CmpItemKindField = { fg="#262626",  bg="#ff7eb6",  },
  -- CmpItemKindEvent = { fg="#262626",  bg="#ff7eb6",  },
  -- CmpItemKindEnumMember = { fg="#262626",  bg="#82cfff",  },
  -- CmpItemKindEnum = { fg="#262626",  bg="#78a9ff",  },
  -- CmpItemKindConstructor = { fg="#262626",  bg="#ee5396",  },
  -- CmpItemKindConstant = { fg="#262626",  bg="#ee5396",  },
  -- CmpItemKindClass = { fg="#262626",  bg="#33b1ff",  },
 -- },
  -- CodeiumSuggestion = { fg="#808080",  },
  -- CodeiumAnnotation = { links to Normal },
  -- TSRainbowRed = { fg="#cc241d",  },
  -- TSRainbowOrange = { fg="#d65d0e",  },
  -- TSRainbowYellow = { fg="#d79921",  },
  -- TSRainbowGreen = { fg="#689d6a",  },
  -- TSRainbowCyan = { fg="#a89984",  },
  -- TSRainbowBlue = { fg="#458588",  },
  -- TSRainbowViolet = { fg="#b16286",  },
  -- ['@attribute'] = { fg="#82cfff",  },
  -- ['@annotation'] = {  },
  -- helpSectionDelim = {  },
  -- helpHeader = { fg="#82cfff",  },
  -- helpHyperTextJump = { fg="#3ddbd9",  },
  -- helpCommand = {  },
  -- healthWarning = { fg="#be95ff",  },
  -- healthSuccess = { fg="#42be65",  },
  -- NotifyWARNTitle = { fg="#be95ff",  },
  -- NotifyWARNIcon = { fg="#be95ff",  },
  -- NotifyWARNBorder = { fg="#be95ff",  },
  -- NotifyWARNBody = { links to Normal },
  -- NotifyTRACETitle = { fg="#42be65",  },
  -- NotifyTRACEIcon = { fg="#42be65",  },
  -- NotifyTRACEBorder = { fg="#42be65",  },
  -- NotifyTRACEBody = { links to Normal },
  -- NotifyINFOTitle = { fg="#f2f2f2",  },
  -- NotifyINFOIcon = { fg="#f2f2f2",  },
  -- NotifyINFOBorder = { fg="#f2f2f2",  },
  -- NotifyINFOBody = { links to Normal },
  -- NotifyERRORTitle = { fg="#3ddbd9",  },
  -- NotifyERRORIcon = { fg="#3ddbd9",  },
  -- NotifyERRORBorder = { fg="#3ddbd9",  },
  -- NotifyERRORBody = { links to Normal },
  -- NotifyDEBUGTitle = { fg="#42be65",  },
  -- NotifyDEBUGIcon = { fg="#42be65",  },
  -- NotifyDEBUGBorder = { fg="#42be65",  },
  -- ['@operator'] = { links to Operator },
  -- ['@type'] = { links to Type },
  -- ['@storageclass'] = { links to StorageClass },
  -- ['@preproc'] = { links to PreProc },
  -- ['@debug'] = { links to Debug },
  -- @text.todo = { links to Todo },
  -- ['@comment'] = { links to Comment },
  -- ['@punctuation'] = { links to Delimiter },
  -- ['@define'] = { links to Define },
  -- ['@macro'] = { links to Macro },
  -- ['@string'] = { links to String },
  -- ['@character'] = { links to Character },
  -- ['@number'] = { links to Number },
  -- ['@boolean'] = { links to Boolean },
  -- ['@float'] = { links to Float },
  -- NavicIconsClass = {  },
  -- NavicIconsEnum = {  },
  -- NavicIconsVariable = {  },
  -- NavicIconsTypeParameter = {  },
  -- NavicIconsStruct = {  },
  -- NavicIconsString = {  },
  -- NavicIconsProperty = {  },
  -- NavicIconsPackage = {  },
  -- NavicIconsOperator = {  },
  -- NavicIconsNumber = {  },
  -- NavicIconsNull = {  },
  -- NavicIconsNamespace = {  },
  -- NavicIconsModule = {  },
  -- NavicIconsMethod = {  },
  -- NavicIconsKey = {  },
  -- NavicIconsInterface = {  },
  -- NavicIconsFunction = {  },
  -- NavicIconsFile = {  },
  -- NavicIconsField = {  },
  -- NavicIconsEvent = {  },
  -- NavicIconsEnumMember = {  },
  -- NavicIconsConstructor = {  },
  -- NavicIconsConstant = {  },
  -- DashboardCenter = {  },
 -- }
  --
  --
  --
  --
  --
  -- require("notify").setup({background_colour="#1f1f1f"}),
  -- NotifyBackground = { bg="#222222" },
  --   BufferLineDiagnostic  fg=#303030 bg=#1d1d1d
  -- BufferLineDiagnosticSelected  cterm=bold,italic gui=bold,italic fg=#bfbfbf bg=#1c1c1c
  -- BufferLineDiagnosticVisible  fg=#303030 bg=#191919
  -- BufferLineErrorDiagnostic  fg=#303030 bg=#1d1d1d guisp=#bf0000
  -- BufferLineErrorDiagnosticSelected  cterm=bold,italic gui=bold,italic fg=#bf0000 bg=#1c1c1c guisp=#bf0000
  -- BufferLineErrorDiagnosticVisible  fg=#303030 bg=#191919
  -- BufferLineHintDiagnostic  fg=#303030 bg=#1d1d1d guisp=#bfbf00
  -- BufferLineHintDiagnosticSelected  cterm=bold,italic gui=bold,italic fg=#bfbf00 bg=#1c1c1c guisp=#bfbf00
  -- BufferLineHintDiagnosticVisible  fg=#303030 bg=#191919
  -- BufferLineInfoDiagnostic  fg=#303030 bg=#1d1d1d guisp=#81a2ac
  -- BufferLineInfoDiagnosticVisible  fg=#303030 bg=#191919
  -- BufferLineModified  fg=#ffff00 bg=#1d1d1d
  -- BufferLineModifiedSelected  fg=#ffff00 bg=#1c1c1c
  -- BufferLineModifiedVisible  fg=#ffff00 bg=#191919
  -- BufferLineNumbers  fg=#404040 bg=#1d1d1d
  -- BufferLineNumbersSelected  cterm=bold,italic gui=bold,italic fg=#ffffff bg=#1c1c1c
  -- BufferLineNumbersVisible  fg=#404040 bg=#191919
  -- BufferLineWarningDiagnostic  fg=#303030 bg=#1d1d1d guisp=#bf7b00
  -- BufferLineWarningDiagnosticSelected  cterm=bold,italic gui=bold,italic fg=#bf7b00 bg=#1c1c1c guisp=#bf7b00
  -- BufferLineWarningDiagnosticVisible  fg=#303030 bg=#191919
  --
  --     BufferLineDevIconSh  fg=#666666 bg=#1d1d1d
  -- BufferLineDevIconVim  bg=#1d1d1d
  -- BufferLineDevIconVimInactive  fg=#248546 bg=#1d1d1d
  -- BufferLineBufferSelected  cterm=bold,italic gui=bold,italic fg=#ffffff bg=#1c1c1c
  -- BufferLineHintSelected  cterm=bold,italic gui=bold,italic fg=#ffff00 bg=#1c1c1c guisp=#ffff00
  -- BufferLineBuffer  fg=#404040 bg=#1d1d1d
  -- BufferLineCloseButtonSelected  fg=#ffffff bg=#1c1c1c
  -- BufferLineError  fg=#404040 bg=#1d1d1d guisp=#ff0000
  -- BufferLineHint  fg=#404040 bg=#1d1d1d guisp=#ffff00
  -- BufferLineOffsetSeparator  fg=#303030 bg=#0f0f0f
  -- BufferLinePickVisible  cterm=bold,italic gui=bold,italic fg=#ff0000 bg=#191919
  -- BufferLinePickSelected  cterm=bold,italic gui=bold,italic fg=#ff0000 bg=#1c1c1c
  -- BufferLineTabSeparatorSelected  fg=#0f0f0f bg=#1c1c1c
  -- BufferLineTabSeparator  fg=#0f0f0f bg=#1d1d1d
  -- BufferLineSeparatorVisible  fg=#0f0f0f bg=#191919
  -- BufferLineSeparatorSelected  fg=#0f0f0f bg=#1c1c1c
  -- BufferLineDuplicate  cterm=italic italic=true fg=#3c3c3c bg=#1d1d1d
  -- BufferLineDuplicateVisible  cterm=italic italic=true fg=#3c3c3c bg=#191919
  -- BufferLineDuplicateSelected  cterm=italic italic=true fg=#3c3c3c bg=#1c1c1c
  -- BufferLineTab   fg=#404040 bg=#1d1d1d
  -- BufferLineErrorSelected  cterm=bold,italic gui=bold,italic fg=#ff0000 bg=#1c1c1c guisp=#ff0000
  -- BufferLineErrorVisible  fg=#404040 bg=#191919
  -- BufferLineWarningSelected  cterm=bold,italic gui=bold,italic fg=#ffa500 bg=#1c1c1c guisp=#ffa500
  -- BufferLineWarningVisible  fg=#404040 bg=#191919
  -- BufferLineInfoSelected  cterm=bold,italic gui=bold,italic fg=#add8e6 bg=#1c1c1c guisp=#add8e6
  -- BufferLineInfoVisible  fg=#404040 bg=#191919
  -- BufferLinePick  cterm=bold,italic gui=bold,italic fg=#ff0000 bg=#1d1d1d
  -- BufferLineInfo  fg=#404040 bg=#1d1d1d guisp=#add8e6
  -- BufferLineHintVisible  fg=#404040 bg=#191919
  -- BufferLineBufferVisible  fg=#404040 bg=#1d1d1d
  -- BufferLineCloseButtonVisible  fg=#404040 bg=#191919
  -- BufferLineWarning  fg=#404040 bg=#1d1d1d guisp=#ffa500
  -- BufferLineTabClose  fg=#404040 bg=#1d1d1d
  -- BufferLineTabSelected  fg=#66d9ef bg=#1c1c1c
  -- BufferLineGroupLabel  fg=#0f0f0f bg=#404040
  -- BufferLineGroupSeparator  fg=#404040 bg=#0f0f0f
  -- BufferLineIndicatorVisible  fg=#191919 bg=#191919
  -- hi Search bg=#00CCFF fg=#1c1c1c gui=bold
  -- hi IncSearch cterm=reverse fg=#1c1c1c bg=#FF00FF reverse=true,underline,bold
  -- hi CurSearch reverse=true
  -- termcolorcode_c_bold_g_bold {},
  --  ------------------------------------------------
-- Preview
-- Colors
-- Token	Value	Hover
-- black-100
-- #000000 #212121
-- blue-10 #edf5ff #dbebff
-- blue-20 #d0e2ff #b8d3ff
-- blue-30 #a6c8ff #8ab6ff
-- blue-40 #78a9ff #5c97ff
-- blue-50 #4589ff #1f70ff
-- blue-60 #0f62fe #0050e6
-- blue-70 #0043ce #0053ff
-- blue-80 #002d9c #0039c7
-- blue-90 #001d6c #00258a
-- blue-100 #001141 #001f75
-- coolGray-10 #f2f4f8 #e4e9f1
-- coolGray-20 #dde1e6 #cdd3da
-- coolGray-30 #c1c7cd #adb5bd
-- coolGray-40 #a2a9b0 #9199a1
-- coolGray-50 #878d96 #757b85
-- coolGray-60 #697077 #585e64
-- coolGray-70 #4d5358 #5d646a
-- coolGray-80 #343a3f #434a51
-- coolGray-90 #21272a #2b3236
-- coolGray-100 #121619 #222a2f
-- cyan-10 #e5f6ff #cceeff
-- cyan-20 #bae6ff #99daff
-- cyan-30 #82cfff #57beff
-- cyan-40 #33b1ff #059fff
-- cyan-50 #1192e8 #0f7ec8
-- cyan-60 #0072c3 #005fa3
-- cyan-70 #00539a #0066bd
-- cyan-80 #003a6d #00498a
-- cyan-90 #012749 #013360
-- cyan-100 #061727 #0b2947
-- gray-10 #f4f4f4 #e8e8e8
-- gray-20 #e0e0e0 #d1d1d1
-- gray-30 #c6c6c6 #b5b5b5
-- gray-40 #a8a8a8 #999999
-- gray-50 #8d8d8d #7a7a7a
-- gray-60 #6f6f6f #5e5e5e
-- gray-70 #525252 #636363
-- gray-80 #393939 #474747
-- gray-90 #262626 #333333
-- gray-100 #161616 #292929
-- green-10 #defbe6 #b6f6c8
-- green-20 #a7f0ba #74e792
-- green-30 #6fdc8c #36ce5e
-- green-40 #42be65 #3bab5a
-- green-50 #24a148 #208e3f
-- green-60 #198038 #166f31
-- green-70 #0e6027 #11742f
-- green-80 #044317 #05521c
-- green-90 #022d0d #033b11
-- green-100 #071908 #0d300f
-- magenta-10 #fff0f7 #ffe0ef
-- magenta-20 #ffd6e8 #ffbdda
-- magenta-30 #ffafd2 #ff94c3
-- magenta-40 #ff7eb6 #ff57a0
-- magenta-50 #ee5396 #e3176f
-- magenta-60 #d02670 #b0215f
-- magenta-70 #9f1853 #bf1d63
-- magenta-80 #740937 #8e0b43
-- magenta-90 #510224 #68032e
-- magenta-100 #2a0a18 #53142f
-- orange-10 #fff2e8 #ffe2cc
-- orange-20 #ffd9be #ffc69e
-- orange-30 #ffb784 #ff9d57
-- orange-40 #ff832b #fa6800
-- orange-50 #eb6200 #cc5500
-- orange-60 #ba4e00 #9e4200
-- orange-70 #8a3800 #a84400
-- orange-80 #5e2900 #753300
-- orange-90 #3e1a00 #522200
-- orange-100 #231000 #421e00
-- purple-10 #f6f2ff #ede5ff
-- purple-20 #e8daff #dcc7ff
-- purple-30 #d4bbff #c5a3ff
-- purple-40 #be95ff #ae7aff
-- purple-50 #a56eff #9352ff
-- purple-60 #8a3ffc #7822fb
-- purple-70 #6929c4 #7c3dd6
-- purple-80 #491d8b #5b24ad
-- purple-90 #31135e #40197b
-- purple-100 #1c0f30 #341c59
-- red-10 #fff1f1 #ffe0e0
-- red-20 #ffd7d9 #ffc2c5
-- red-30 #ffb3b8 #ff99a0
-- red-40 #ff8389 #ff6168
-- red-50 #fa4d56 #ee0713
-- red-60 #da1e28 #b81922
-- red-70 #a2191f #c21e25
-- red-80 #750e13 #921118
-- red-90 #520408 #66050a
-- red-100 #2d0709 #540d11
-- teal-10 #d9fbfb #acf6f6
-- teal-20 #9ef0f0 #57e5e5
-- teal-30 #3ddbd9 #25cac8
-- teal-40 #08bdba #07aba9
-- teal-50 #009d9a #008a87
-- teal-60 #007d79 #006b68
-- teal-70 #005d5d #007070
-- teal-80 #004144 #005357
-- teal-90 #022b30 #033940
-- teal-100 #081a1c #0f3034
-- warmGray-10 #f7f3f2 #f0e8e6
-- warmGray-20 #e5e0df #d8d0cf
-- warmGray-30 #cac5c4 #b9b3b1
-- warmGray-40 #ada8a8 #9c9696
-- warmGray-50 #8f8b8b #7f7b7b
-- warmGray-60 #726e6e #605d5d
-- warmGray-70 #565151 #696363
-- warmGray-80 #3c3838 #4c4848
-- warmGray-90 #272525 #343232
-- warmGray-100 #171414 #2c2626
-- white-0 #ffffff
-- #
-- yellow-10 #fcf4d6 #f8e6a0
-- yellow-20 #fddc69 #fccd27
-- yellow-30 #f1c21b #ddb00e
-- yellow-40 #d2a106 #bc9005
-- yellow-50 #b28600 #9e7700
-- yellow-60 #8e6a00 #755800
-- yellow-70 #684e00 #806000
-- yellow-80 #483700 #5c4600
-- yellow-90 #302400 #3d2e00
-- yellow-100 #1c1500 #332600
