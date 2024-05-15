return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  { "lukas-reineke/onedark.nvim", enabled = true },
  { "saforem2/glitz", lazy = false, enabled = true},
  -- { dir = "/home/samforeman/projects/saforem2/glitz", lazy = false, enabled = true},
  { "LunarVim/bigfile.nvim" },
  { "p00f/nvim-ts-rainbow" },
  { "dstein64/vim-startuptime" },
  { "rktjmp/shipwright.nvim" },
  { "NTBBloodbath/doom-one.nvim" },
  -- { "navarasu/onedark.nvim" },
  { "marko-cerovac/material.nvim" },
  -- { "navarasu/onedark.nvim" },
  { "sainnhe/sonokai" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "tanvirtin/monokai.nvim" },
  { "bluz71/vim-nightfly-guicolors" },
  { "rafamadriz/neon" },
  { "sainnhe/sonokai" },
  { "yonlu/omni.vim" },
  { "lukas-reinke/indent-blankline.nvim", enabled = false },
  { "wakatime/vim-wakatime" },
  { "mbbill/undotree" },
  { "kosayoda/nvim-lightbulb" },
  { "machakann/vim-sandwich" },
  { "rktjmp/lush.nvim" },
  { "vim-python/python-syntax" },
  { "Vimjas/vim-python-pep8-indent" },
  { "rafcamlet/nvim-luapad" },
  { "tpope/vim-repeat" },
  { "kreskij/Repeatable.vim" },
  { "easymotion/vim-easymotion" },
  { "lervag/vimtex" },
  { "simrat39/symbols-outline.nvim", cmd = "SymbolsOutline" },
  { "folke/trouble.nvim", cmd = "TroubleToggle" },
  { "npxbr/glow.nvim", ft = { "markdown", "quarto" } },
  { "chaoren/vim-wordmotion" },
  { "jbyuki/nabla.nvim" },
  { "knubie/vim-kitty-navigator" },
  { "fladson/vim-kitty" },
  { "jmbuhr/otter.nvim", opts = {} },
  { "folke/lsp-colors.nvim", event = "BufRead" },
  { "felipec/vim-sanegx" },
  { "godlygeek/tabular" },
  { "brenoprata10/nvim-highlight-colors" },
  { "nvim-telescope/telescope-file-browser.nvim" },
  { "rrethy/vim-illuminate" },
  { "preservim/vim-pencil" },
  { "dhruvasagar/vim-table-mode" },
  { "jghauser/mkdir.nvim" },
  { "hkupty/iron.nvim" },
  { "Bekaboo/deadcolumn.nvim" },
  { "rktjmp/lush.nvim" },
  { "bfredl/nvim-ipy" },
  -- { "lvimuser/lsp-inlayhints.nvim" },
  { "HiPhish/nvim-ts-rainbow2" },
  { "vim-pandoc/vim-pandoc-syntax" },
  { "ggandor/lightspeed.nvim", event = "BufRead" },

  {
    "preservim/vim-markdown",
    branch = "master",
    dependencies = { "godlygeek/tabular" },
  },

  { -- interactive global search and replace
    'nvim-pack/nvim-spectre',
    cmd = { 'Spectre' },
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },

  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require("numb").setup {
        show_numbers = true,
        show_cursorline = true,
      }
    end,
  },
  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function() vim.g.matchup_matchparen_offscreen = { method = "popup" } end,
  },
  {
    "nvim-treesitter/playground",
    cmd = "TSHighlightCapturesUnderCursor",
  },
  {
    "chentoast/marks.nvim",
    config = function()
      require("marks").setup {
        default_mappings = true,
        -- builtin_marks = {'.', '<', '>', '^'},
        cyclic = true,
        force_write_shada = false,
        refresh_interval = 250,
        sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
        bookmark_0 = { sign = "⚑", virt_text = "hello world" },
      }
    end,
  },
  {
    "rmagatti/goto-preview",
    config = function()
      require("goto-preview").setup {
        width = 120,
        height = 25,
        default_mappings = false,
        debug = false,
        opacity = nil,
        post_open_hook = nil,
      }
    end,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup {
        bind = true,
        floating_window = false,
        hint_enable = true,
        hint_prefix = " ",
        hi_parameter = "LspSignatureActiveParameter",
        -- toggle_key = '<C-s>',
        handler_opts = {
          border = "rounded",
        },
        always_trigger = true,
        extra_trigger_chars = { "(", "," },
        timer_interval = 100,
      }
    end,
  },
  {
    "glacambre/firenvim",
    run = function() vim.fn["firenvim#install"](0) end,
  },
  {
    "dccsillag/magma-nvim",
    run = ":UpdateRemotePlugins",
  },
  {
    "hoschi/yode-nvim",
    config = function() require("yode-nvim").setup {} end,
  },
  {
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    "kdheepak/tabline.nvim",
    config = function()
      require("tabline").setup {
        -- Defaults configuration options
        enable = true,
        options = {
          -- If lualine is installed tabline will use separators configured in lualine by default.
          -- These options can be used to override those settings.
          -- section_separators = { '', '' },
          -- component_separators = { '', '' },
          max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
          show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
          show_devicons = true, -- this shows devicons in buffer section
          show_bufnr = false, -- this appends [bufnr] to buffer section,
          show_filename_only = true, -- shows base filename only instead of relative path in filename
          -- modified_icon = "+ ", -- change the default modified icon
          modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified
          show_tabs_only = false, -- this shows only tabs instead of tabs + buffers
        },
      }
    end,
  },

  {
    "romgrk/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup {
        enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
        throttle = true, -- Throttles plugin updates (may improve performance)
        max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
        patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
          -- For all filetypes
          -- Note that setting an entry here replaces all other patterns for this entry.
          -- By setting the 'default' entry below, you can control which nodes you want to
          -- appear in the context window.
          default = {
            "class",
            "function",
            "method",
          },
        },
      }
    end,
  },

  {
    "turbio/bracey.vim",
    cmd = { "Bracey", "BraceyStop", "BraceyReload", "BraceyEval" },
    run = "npm install --prefix server",
  },

  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    config = function() require("dap-python").setup "~/.virtualenvs/debugpy/bin/python" end,
  },
  {
    "Pocco81/HighStr.nvim",
    config = function()
      local high_str = require "high-str"
      high_str.setup {
        verbosity = 1,
        saving_path = "/tmp/highstr/",
        highlight_colors = {
          color_0 = { "#0c0d0e", "smart" }, -- Cosmic charcoal
          color_1 = { "#e5c07b", "smart" }, -- Pastel yellow
          color_2 = { "#7FFFD4", "smart" }, -- Aqua menthe
          color_3 = { "#8A2BE2", "smart" }, -- Proton purple
          color_4 = { "#FF4500", "smart" }, -- Orange red
          color_5 = { "#008000", "smart" }, -- Office green
          color_6 = { "#0000FF", "smart" }, -- Just blue
          color_7 = { "#FFC0CB", "smart" }, -- Blush pink
          color_8 = { "#FFF9E3", "smart" }, -- Cosmic latte
          color_9 = { "#7d5c34", "smart" }, -- Fallow brown
        },
      }
      vim.api.nvim_set_keymap("v", "<F3>", ":<c-U>HSHighlight 1<CR>", {
        noremap = true,
        silent = true,
      })
      vim.api.nvim_set_keymap("v", "<F4>", ":<c-U>HSRmHighlight<CR>", {
        noremap = true,
        silent = true,
      })
    end,
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make",
    lazy = false,
  },
  {
    "quarto-dev/quarto-nvim",
    requires = {
      "neovim/nvim-lspconfig",
      "jmbuhr/otter.nvim",
    },
  },
  {
    "projekt0n/circles.nvim",
    requires = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "simrat39/rust-tools.nvim",
    config = function()
      local rt = require "rust-tools"
      rt.setup {
        server = {
          on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
          end,
        },
      }
    end,
  },
  {
    "Exafunction/codeium.vim",
    config = function()
      vim.g.codeium_disable_bindings = 1
      vim.keymap.set("i", "<C-g>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
      vim.keymap.set("i", "<c-;>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
      vim.keymap.set("i", "<c-,>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
      vim.keymap.set("i", "<c-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true })
    end,
  },
  {
    -- "code-stats/code-stats-vim",
    "https://gitlab.com/code-stats/code-stats-vim.git",
    config = function()
      -- REQUIRED: set your API key
      -- TODO: Replace with environment variable ??
      vim.g["codestats_api_key"] = { os.getenv "CODESTATS_API_KEY" }
      -- vim.g['codestats_api_key'] = {os.getenv('CODESTATS_API_KEY')}
    end,
  },

  -- color html colors
  {
    'NvChad/nvim-colorizer.lua',
    enabled = true,
    opts = {
      filetypes = { '*' },
      user_default_options = {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        names = true, -- "Name" codes like Blue or blue
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        AARRGGBB = false, -- 0xAARRGGBB hex codes
        rgb_fn = false, -- CSS rgb() and rgba() functions
        hsl_fn = false, -- CSS hsl() and hsla() functions
        css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
        -- Available modes for `mode`: foreground, background,  virtualtext
        mode = 'background', -- Set the display mode.
        -- Available methods are false / true / "normal" / "lsp" / "both"
        -- True is same as normal
        tailwind = false, -- Enable tailwind colors
        -- parsers can contain values used in |user_default_options|
        sass = { enable = false, parsers = { 'css' } }, -- Enable sass colors
        virtualtext = '■',
        -- update color values even if buffer is not focused
        -- example use: cmp_menu, cmp_docs
        always_update = false,
        -- all the sub-options of filetypes apply to buftypes
      },
      buftypes = {},
    },
  },

  -- {
  --   "norcalli/nvim-terminal.lua",
  --   config = function() require("terminal").setup() end,
  -- },
  -- {
  --   "norcalli/nvim-terminal.lua",
  --   config = function() require("terminal").setup() end,
  -- },
  -- {
  --   "phaazon/hop.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("hop").setup()
  --     vim.api.nvim_set_keymap("n", ";", ":HopChar2<CR>", { silent = true })
  --     vim.api.nvim_set_keymap("n", "W", ":HopWord<CR>", { silent = true })
  --   end,
  -- },
  -- {
  --   "kevinhwang91/nvim-bqf",
  --   event = { "BufRead", "BufNew" },
  --   config = function()
  --     require("bqf").setup {
  --       auto_enable = true,
  --       preview = {
  --         win_height = 12,
  --         win_vheight = 12,
  --         delay_syntax = 80,
  --         border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
  --       },
  --       func_map = {
  --         vsplit = "",
  --         ptogglemode = "z,",
  --         stoggleup = "",
  --       },
  --       filter = {
  --         fzf = {
  --           action_for = { ["ctrl-s"] = "split" },
  --           extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
  --         },
  --       },
  --     }
  --   end,
  -- },
  -- {
  --   "rafi/awesome-vim-colorschemes",
  -- },
  -- {
  --   "flazz/vim-colorschemes",
  -- },
  -- {
  --   'NvChad/nvim-colorizer.lua',
  --   config = require('colorizer').setup({
  --     user_default_options = {
  --       RGB      = true;         -- #RGB hex codes
  --       RRGGBB   = true;         -- #RRGGBB hex codes
  --       names    = true;         -- "Name" codes like Blue
  --       RRGGBBAA = true;        -- #RRGGBBAA hex codes
  --       rgb_fn   = true;        -- CSS rgb() and rgba() functions
  --       hsl_fn   = true;        -- CSS hsl() and hsla() functions
  --       css      = true;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
  --       css_fn   = true;        -- Enable all CSS *functions*: rgb_fn, hsl_fn
  --       -- Available modes: foreground, background
  --       mode     = 'virtualtext'; -- Set the display mode.
  --       tailwind = true,
  --       sass = { enable = true, parsers = {"css"} },
  --       virtualtext = "■",
  --     },
  --   })
  -- },
  -- {
  --   'brenoprata10/nvim-highlight-colors',
  --   config = function()
  --     require('nvim-highlight-colors').setup({
  --       render = 'foreground',
  --       enable_named_colors = true,
  --       enable_tailwind = true,
  --     })
  --   end,
  -- },
  -- {
  --   "folke/zen-mode.nvim",
  --   config = function()
  --     require("zen-mode").setup {
  --       window = {
  --         backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
  --         -- height and width can be:
  --         -- * an absolute number of cells when > 1
  --         -- * a percentage of the width / height of the editor when <= 1
  --         -- * a function that returns the width or the height
  --         -- by default, no options are changed for the Zen window
  --         -- uncomment any of the options below, or add other vim.wo options you want to apply
  --         width = 120, -- width of the Zen window
  --         height = 1, -- height of the Zen window
  --         options = {
  --           -- signcolumn = "no", -- disable signcolumn
  --           number = false, -- disable number column
  --           relativenumber = false, -- disable relative numbers
  --           cursorline = false, -- disable cursorline
  --           cursorcolumn = false, -- disable cursor column
  --           foldcolumn = "0", -- disable fold column
  --           list = false, -- disable whitespace characters
  --         },
  --       },
  --       plugins = {
  --         options = {
  --           enabled = true,
  --           ruler = false, -- disables the ruler text in the cmd line area
  --           showcmd = false, -- disables the command in the last line of the screen,
  --           twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
  --           gitsigns = { enabled = false }, -- disables git signs
  --           tmux = { enabled = false }, -- disables the tmux statusline this will change the font size on kitty when in zen mode
  --           kitty = {
  --             enabled = true,
  --             font = "+4", -- font size increment
  --           },
  --         },
  --       },
  --     }
  --   end,
  -- },
  -- {
  --   "johnfrankmorgan/whitespace.nvim",
  --   config = function()
  --     require('whitespace-nvim').setup({
  --       -- configuration options and their defaults `highlight` configures
  --       -- which highlight is used to display
  --       -- trailing whitespace
  --       highlight = 'DiffDelete',
  --       -- `ignored_filetypes` configures which filetypes to ignore when
  --       -- displaying trailing whitespace
  --       ignored_filetypes = { 'TelescopePrompt' },
  --       -- remove trailing whitespace with a keybinding
  --       vim.api.nvim_set_keymap(
  --         'n',
  --         '<Leader>t', "[[<cmd>lua require('whitespace-nvim').trim()<CR>]]",
  --         { noremap = true }
  --       )
  --     })
  --   end,
  -- },
  -- { 'Iron-E/nvim-highlite' },
  -- {
  --   'rrethy/vim-hexokinase',
  --   run = 'make hexokinase',
  --   config = function()
  --     vim.g["Hexokinase_highlighters"] = {
  --       'virtual',
  --       'sign_column',
  --     }
  --   end,
  -- },
  -- {
  --   "folke/todo-comments.nvim",
  --   lazy = false,
  --   -- config = function()
  --   --   require('todo-comments.nvim').setup({})
  --   -- end
  --   -- config = function()
  --   -- require("user.todo-comments").config()
  --   -- end,
  -- },
  -- {
  --   "anuvyklack/pretty-fold.nvim",
  --   config = function()
  --     require("pretty-fold").setup {
  --       sections = {
  --         left = {
  --           "content",
  --         },
  --         right = {
  --           " ",
  --           "number_of_folded_lines",
  --           ": ",
  --           "percentage",
  --           " ",
  --           function(config) return config.fill_char:rep(3) end,
  --         },
  --       },
  --       fill_char = "•",
  --       remove_fold_markers = true,
  --       -- Keep the indentation of the content of the fold string.
  --       keep_indentation = true,
  --       -- Possible values:
  --       -- "delete" : Delete all comment signs from the fold string.
  --       -- "spaces" : Replace all comment signs with equal number of spaces.
  --       -- false    : Do nothing with comment signs.
  --       process_comment_signs = "spaces",
  --       -- Comment signs additional to the value of `&commentstring` option.
  --       comment_signs = {},
  --       -- List of patterns that will be removed from content foldtext section.
  --       stop_words = {
  --         "@brief%s*", -- (for C++) Remove '@brief' and all spaces after.
  --       },
  --       add_close_pattern = true, -- true, 'last_line' or false
  --       matchup_patterns = {
  --         { "{", "}" },
  --         { "%(", ")" }, -- % to escape lua pattern char
  --         { "%[", "]" }, -- % to escape lua pattern char
  --       },
  --       ft_ignore = { "neorg" },
  --     }
  --   end,
  -- },
  {},
  -- {
  --   "luk400/vim-jukit",
  --   config = function()
  --     -- vim.api.nvim_set_var('jukit#mappings#ext#enabled', {'py', 'ipynb'})
  --     vim.g.jukit_mappings_ext_enabled = { "py", "ipynb" }
  --     vim.g.jukit_layout = -1
  --     -- vim.g['jukit#mappings#ext#enabled'] = {"py", "ipynb"}
  --     -- g.jukit_mappings_ext_enabled = {"py", "ipynb"}
  --     -- vim.opt.jukit_mappings_ext_enabled = {"py", "ipynb"}
  --   end,
  -- },
  -- { "tomtom/tcomment_vim" },
  -- {
  --   "Cassin01/wf.nvim",
  --   config = function()
  --   require('wf').setup()
  --   end
  -- }

}
