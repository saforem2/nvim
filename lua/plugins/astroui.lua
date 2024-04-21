-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "sam_molokai",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = {      },

      -- astrotheme = { -- a table of overrides/changes when applying the astrotheme theme
      --   -- Norm -- this table overrides highlights in all themes
      --   -- Normal = { bg = "#1c1c1c" },
      --   ['@markup.quote'] = { fg="#777777", italic=true },
      --   ['BufferCurrent'] = { bg ="#222222", fg="#cccccc" },
      --   ['BufferCurrentMod'] = { bg ="#444444", fg="#00ccff" },
      --   -- NOTE:
      --   ['@tag.delimiter'] = { fg="#82cfff" },
      --   ['@tag.attribute'] = { fg="#82cfff" },
      --   ['@symbol'] = { bold=true, fg="#82cfff" },
      --   ['@string.regex'] = { fg="#08bdba" },
      --   ['@punctuation.special'] = { fg="#3ddbd9" },
      --   ['@punctuation.delimiter'] = { fg="#3ddbd9" },
      --   ['@punctuation.bracket'] = { fg="#8Cff48" },
      --   ['@keyword.operator'] = { fg="#3ddbd9" },
      --   -- ['@keyword.function'] = { fg="#3ddbd9" },
      --   ['@keyword.function'] = { fg="#ff7eb6" },
      --   ['@function'] = { bold = true, fg='#36ce5e' },
      --   ['@error'] = { fg="#33b1ff" },
      --   ['@constant'] = { fg="#be95ff" },
      --   ['@constant.builtin'] = { fg="#08bdba" },
      --   ['@constant.macro'] = { fg="#08bdba" },
      --   ['@string.escape'] = { fg="#82cfff" },
      --   -- ['@function'] = { bold=true, fg="#ff7eb6" },
      --   ['@function.builtin'] = { fg="#ff7eb6" },
      --   ['@function.macro'] = { fg="#08bdba" },
      --   ['@method'] = { fg="#08bdba" },
      --   ['@field'] = { fg="#d4bbff" },
      --   ['@odp.import_module'] = { fg="#5C97FF" },
      --   ['@property'] = { fg="#ee5396" },
      --   ['@repeat'] = { fg="#78a9ff" },
      --   ['@label'] = { fg="#82cfff" },
      --   ['@keyword'] = { fg="#78a9ff" },
      --   ['@exception'] = { fg="#82cfff" },
      --   ['@variable'] = { fg="#d0d0d0" },
      --   ['@namespace'] = { fg="#08bdba" },
      --   ['@include'] = { fg="#26c99e" },
      --   ['@tag'] = { fg="#78a9ff" },
      --   -- @text.literal = { fg="#ae81ff",  },
      --   -- Headline2 = { bg="#002933" },
      --   ['@text.note'] = { bg="#002933" },
      --   ['@text.title'] = { fg="#ee5396",  },
      --   ['@text.title.2'] = { fg="#00CCFF",  },
      --   -- @text.uri = { underline=true, fg="#be95ff",  },
      --   ['@text.emphasis'] = { bold=true, fg="#ee5396", italic=true  },
      --   ['@text.quote'] = { fg="#666666", italic=true },
      --   ['@text.strong'] = { fg="#FFFFFF", bold=true },
      --   ['@text.literal'] = { fg = "#AE81FF" },
      --   ['@text.strike'] = { bg="#333333", fg="#666666", strikethrough=true },
      --   ['@text.reference'] = { fg="#4dabf7", underline=true },
      --   ['@text.uri'] =  { underline=true, fg="#bd95ff" },
      --   ['@text.underline'] = { underline=true, fg="#ee5396" },
      --   -- ['@variable'] = { fg="#d0d0d0" },
      --   ['@parameter'] = { fg = "#FFB53D" },
      --   ['@type.builtin'] = { fg="#26C99E" },
      --   ['@method.call'] = { fg = "#36ce5e" },
      --   ['@string.documentation'] = { fg = "#697077", italic=true },
      --   -- Headline1 = { bg="#1e2718" },
      --   -- Headline2 = { bg="#21262d" },
      --   htmlH1 = { fg="#ffffff", bold=true },
      --   htmlH2 = { fg="#eeeeee" },
      --   htmlH3 = { fg="#cccccc" },
      --   -- Headline1 = { bg="#1e2718" },
      --   -- Headline2 = { bg="#002933", bold=false },
      --   Dash = { bg="#222222", bold = true },
      --   CodeiumSuggestion = { fg = "#444444", bg = "#222222" },
      --   -- RainbowDelimiter00     = { fg="#f8f8f8" },
      --   RainbowDelimiter00     = { fg="#ee5396", bold=true },
      --   RainbowDelimiter01     = { fg="#FD971F" },
      --   RainbowDelimiter02     = { fg="#FFFF00", bold=true },
      --   RainbowDelimiter03     = { fg="#36CE5E"},
      --   RainbowDelimiter04     = { fg="#1A8FFF", bold=true},
      --   RainbowDelimiter05     = { fg="#AE81FF" },
      --   RainbowDelimiter06     = { fg="#00CCFF", bold=true },
      -- -- WhichKeyDesc   gui= links to Identifier
      -- -- WhichKeyGroup  gui= links to Keyword
      -- -- WhichKeyBorder gui= links to FloatBorder
      -- -- WhichKeyFloat  gui= links to NormalFloat
      -- -- WhichKeyValue  gui= links to Comment
      --   NormalFloat = { bg="#222222" },
      --   WhichKeyDesc = { fg="#d0d0d0" },
      --   WhichKeyGroup = { fg="#ee5396" },
      --   WhichKeyBorder = { fg="#00CCFF" },
      --   WhichKeyFloat = { bg="#222222" },
      --   QuickScopePrimary = { bold=true, underline=true, bg="#FB6896" },
      --   QuickScopeSecondary = { italic=true, underline=true, bg="#002933" },
      --   -- Headline1 = { bg="#32111F" },
      --   -- Headline2 = { bg="#002933" },
      --   -- QuickScopePrimary = { bg="#222222", sp="#666666", fg="none", underline=true, bold=true},
      --   -- QuickFixLine = { bg="#262626",  },
      --   LineNr = { fg="#383838", bg = "none" },
      --   Keyword =  { fg="#FF79FF" },
      --   DiagnosticWarn = { fg = "#FFB53D" },
      --   TerminalCSIColorCode = { fg = "#00CCFF" },
      --   -- FloatTitle = { links to Title },
      --   FloatBorder = { fg="#131313",  bg="#161616",  },
      --   -- FloatShadow = { bg="#000000", blend=80 },
      --   -- FloatShadowThrough = { bg="#000000", blend=100 },
      --   -- NotifyBackground                       ={ guibg="#1c1c1c" }, -- NotifyBackground xxx links to Normal
      --   -- WinBarNC = { links to WinBar },
      --   -- FloatTitle = { links to Title },
      --   -- PmenuKind = { links to Pmenu },
      --   -- PmenuKindSel = { links to PmenuSel },
      --   -- PmenuExtra = { links to Pmenu },
      --   -- PmenuExtraSel = { links to PmenuSel },
      --   -- TabLine = { links to StatusLineNC },
      --   -- TabLineSel = { links to StatusLine },
      --   -- TabLineFill = { links to TabLine },
      --   -- Whitespace = { links to NonText },
      --   Whitespace = { bg="#1f1f1f" },
      --   Pmenu  = {fg="#d0d0d0", bg="#222222"},
      --   PmenuSbar = {fg="#d0d0d0", bg="#222222"},
      --   PmenuSel = { fg="#3ddbd9", bg="#222222"},
      --   PmenuThumb = {fg="#3ddbd9", bg="#222222"},
      --   IlluminatedWordText = { bg="#282828", fg="#ff5252" },
      --   IlluminatedWordRead = { bg="#282828", fg="#ffffff" },
      --   IlluminatedWordWrite = { bg="#252525", fg="#bdbdbd" },
      --   termcolorcode_cfg_246_gfg_949494 = { fg="#838383" },
      --   termcolorcode_cfg_208_gfg_FF8700 = { fg="#ff8700" },
      --   termcolorcode_cfg_37_gfg_00AFAF = { fg="#46D9FF" },
      --   termcolorcode_cfg_39_gfg_00AFFF = { fg="#00afff" },
      --   termcolorcode_cfg_5_gfg_AA00AA = { fg="#ff79ff" },
      --   termcolorcode_cfg_2_gfg_00AA00 = { fg="#00aa00" },
      --   termcolorcode_c_bold_cfg_5_g_bold_gfg_AA00AA = { fg="#d4bbff" },
      --   termcolorcode_cfg_3_gfg_AA5500 = { fg="#FFFF00" },
      --   termcolorcode_cfg_10_gfg_55FF55 = { fg="#55ff55" },
      --   termcolorcode_cfg_13_gfg_FF55FF = { fg="#ff55ff" },
      --   Search = { bold=true, fg="#1c1c1c",  bg="#00ccff",  },
      --   CurSearch = { bg="#FF5252", fg="#1c1c1c", bold=true },
      --   NeoTreeGitUnstaged = { fg="#939393", italic=false, bold=false },
      --   NeoTreeGitUntracked = { fg="#666666", italic=false, bold=false },
      --   NeoTreeGitConflict = { fg="#FFFF00", italic=false, bold=true },
      --   NeoTreeModified = { fg="#AE81FF", italic=false },
      --   BufferLineBufferSelected = { fg="#9e9e9e", bg="#282828", italic=false, bold=true },
      --   NotifyBackground = { bg="#222222", fg="#939393" },
      --   NotifyERRORBody = { fg="#f8f8f8", bg="#1c1c1c" }, -- NotifyERRORBody xxx links to Normal
      --   NotifyWARNBody                         ={ fg="#f8f8f8", bg="#1c1c1c" }, -- NotifyWARNBody xxx links to Normal
      --   NotifyINFOBody                         ={ fg="#f8f8f8", bg="#1c1c1c" }, -- NotifyINFOBody xxx links to Normal
      --   NotifyDEBUGBody                        ={ fg="#f8f8f8", bg="#1c1c1c" }, -- NotifyDEBUGBody xxx links to Normal
      --   NotifyTRACEBody                        ={ fg="#f8f8f8", bg="#1c1c1c" }, -- NotifyTRACEBody xxx links to Normal
      --   NotifyLogTitle                         ={ fg="#00CCFF", bg="#1c1c1c" }, -- NotifyLogTitle xxx links to Special
      --   NotifyLogTime                          ={ fg="#777777", bg="#1c1c1c" }, -- NotifyLogTime  xxx links to Comment
      --   NotifyWARNBorder                       ={ fg="#FFB53D", }, -- NotifyWARNBorder xxx guifg=#79491d
      --   NotifyWARNIcon                         ={ fg="#FFb53d", }, -- NotifyWARNIcon xxx guifg=#f79000
      --   NotifyWARNTitle                        ={ fg="#FFb53d", }, -- NotifyWARNTitle xxx guifg=#f79000
      --   NotifyDEBUGBorder                      ={ fg="#d4bbff", }, -- NotifyDEBUGBorder xxx guifg=#8b8b8b
      --   NotifyDEBUGIcon                        ={ fg="#d4bbff", }, -- NotifyDEBUGIcon xxx guifg=#8b8b8b
      --   NotifyDEBUGTitle                       ={ fg="#d4bbff", }, -- NotifyDEBUGTitle xxx guifg=#8b8b8b
      --   NotifyERRORBorder                      ={ fg="#FF5252", }, -- NotifyERRORBorder xxx guifg=#8a1f1f
      --   NotifyERRORTitle                       ={ fg="#ff5252", }, -- NotifyERRORTitle xxx guifg=#f70067
      --   NotifyERRORIcon                        ={ fg="#FF5252", }, -- NotifyERRORIcon xxx guifg=#f70067
      --   NotifyINFOBorder                       ={ fg="#a9ff68", }, -- NotifyINFOBorder xxx guifg=#4f6752
      --   NotifyINFOIcon                         ={ fg="#a9ff68", }, -- NotifyINFOIcon xxx guifg=#a9ff68
      --   NotifyINFOTitle                        ={ fg="#a9ff68", }, -- NotifyINFOTitle xxx guifg=#a9ff68
      --   NotifyTRACEBorder                      ={ fg="#d484ff", }, -- NotifyTRACEBorder xxx guifg=#4f3552
      --   NotifyTRACEIcon                        ={ fg="#d484ff", }, -- NotifyTRACEIcon xxx guifg=#d484ff
      --   NotifyTRACETitle                       ={ fg="#d484ff", }, -- NotifyTRACETitle xxx guifg=#d484ff
      --   jukit_textcell_bg_colors = { bg="#333333" },
      --   Directory = { fg="#3ddbd9" },
      --   ErrorMsg = { fg="#ee5396" },
      --   MoreMsg = { fg="#3ddbd9",  },
      --   ModeMsg = { fg="#d0d0d0",  },
      --   -- LineNr = { fg="#444444",  bg="none",  },
      --   CursorLineNr = { fg="#d0d0d0",  },
      --   Question = { fg="#d0d0d0",  },
      --   StatusLine = { fg="#d0d0d0",  bg="#222222",  },
      --   StatusLineNC = { fg="#d0d0d0",  bg="#262626",  },
      --   VertSplit = { fg="#262626",  bg="none",  },
      --   Title = { fg="#d0d0d0", bold=true },
      --   Visual = { bg="#393939",  },
      --   VisualNC = {  },
      --   WarningMsg = { fg="#be95ff",  },
      --   WildMenu = { fg="#3ddbd9",  bg="#222222",  },
      --   Folded = { fg="#393939",  bg="#262626",  },
      --   FoldColumn = { fg="#262626",  bg="none",  },
      --   DiffAdd = { bg="#122f2f",  },
      --   DiffChange = { bg="#222a39",  },
      --   DiffDelete = { bg="#361c28",  },
      --   DiffText = { bg="#2f3f5c",  },
      --   SignColumn = { fg="#262626",  bg="none",  },
      --   -- Conceal = {  },
      --   CursorColumn = { bg="#262626",  },
      --   CursorLine = { bg="#262626",  },
      --   colorcolumn = { bg="#262626",  },
      --   NormalNC = { fg="#f2f2f2",  bg="#161616",  },
      --   MsgArea = {  },
      --   WinBar = { bold = true },
      --   Cursor = { reverse = true },
      --   Normal = { fg="#bdbdbd",  },
      --   Substitute = { fg="#262626",  bg="#3ddbd9",  },
      --   RedrawDebugNormal = { reverse=true },
      --   RedrawDebugClear = { bg="#FFFF00" },
      --   RedrawDebugComposed = { bg="#63ff5b" },
      --   RedrawDebugRecompose = { bg="#FF5252" },
      --   Comment = { fg="#494949" },
      --   al = { bg = "#000000" },
      -- },

    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
