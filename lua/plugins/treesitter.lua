-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
        "lua",
        "vim",
        "markdown",
        "bash",
        "yaml",
        "json",
        "css"
        -- add more arguments for adding more treesitter parsers
      })
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      if not opts.ensure_installed then opts.ensure_installed = {} end
      -- require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        -- "lua"
      -- })
    end,
  },

  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      { 'nvim-treesitter/nvim-treesitter-textobjects' },
    },
    run = ':TSUpdate',
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup {
        auto_install = true,
        ensure_installed = {
          -- 'r',
          'python',
          'markdown',
          'markdown_inline',
          'julia',
          'bash',
          'yaml',
          'lua',
          'vim',
          'query',
          'vimdoc',
          'latex', -- requires tree-sitter-cli (installed automatically via Mason)
          'html',
          'css',
          'dot',
          'javascript',
          'mermaid',
          -- 'norg',
          'typescript',
        },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = 'gnn',
            node_incremental = 'grn',
            scope_incremental = 'grc',
            node_decremental = 'grm',
          },
        },
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              -- You can use the capture groups defined in textobjects.scm
              ['af'] = '@function.outer',
              ['if'] = '@function.inner',
              ['ac'] = '@class.outer',
              ['ic'] = '@class.inner',
            },
          },
          move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
              [']m'] = '@function.outer',
              [']]'] = '@class.inner',
            },
            goto_next_end = {
              [']M'] = '@function.outer',
              [']['] = '@class.outer',
            },
            goto_previous_start = {
              ['[m'] = '@function.outer',
              ['[['] = '@class.inner',
            },
            goto_previous_end = {
              ['[M'] = '@function.outer',
              ['[]'] = '@class.outer',
            },
          },
        },
      }
    end,
  },
}

  -- {
  --   'HiPhish/rainbow-delimiters.nvim',
  --   config = function()
  --     require("rainbow-delimiters.setup").setup({
  --       local_rainbow_delimiters = require 'rainbow-delimiters',
  --       strategy = {
  --         [''] = require('rainbow-delimiters').strategy['global'],
  --         vim = require('rainbow-delimiters').strategy['local'],
  --       },
  --       query = {
  --         [''] = 'rainbow-delimiters',
  --         lua = 'rainbow-blocks',
  --       },
  --       highlight = {
  --         'RainbowDelimiter00',
  --         'RainbowDelimiter01',
  --         'RainbowDelimiter02',
  --         'RainbowDelimiter03',
  --         'RainbowDelimiter04',
  --         'RainbowDelimiter05',
  --         'RainbowDelimiter06',
  --       },
  --       -- local hooks = require "ibl.hooks",
  --       -- hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  --       --     vim.api.nvim_set_hl(0, 'RainbowDelimiter00', { bg = "#E06C75" })
  --       --     vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
  --       --     vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
  --       --     vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
  --       --     vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
  --       --     vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
  --       --     vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
  --       --   end),
  --       -- vim.g.rainbow_delimiters = { highlight = highlight },
  --       -- require("ibl").setup({ scope = { highlight = highlight } }),
  --       -- hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
  --     })
  --   end,
  -- },
}
