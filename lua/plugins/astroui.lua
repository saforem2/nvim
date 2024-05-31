-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      -- change colorscheme
      colorscheme = "glitz",
      -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
      highlights = {
        --   require("highlights.init"),
        -- require('highlights')
        -- init = {      },
      --   -- astrotheme = ,
      --
      -- },
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
    },
  },

  { "saforem2/glitz", lazy = false, enabled = true },
  -- {
  --   dir = "/home/samforeman/projects/saforem2/glitz",
  --   lazy = false,
  --   enabled = true,
  --   -- config = function()
  --   --   require("glitz").setup({})
  --   -- end,
  -- },
}
