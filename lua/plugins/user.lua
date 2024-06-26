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
  {
    "mrjones2014/legendary.nvim",
    -- since legendary.nvim handles all your keymaps/commands,
    -- its recommended to load legendary.nvim before other plugins
    priority = 10000,
    lazy = false,
    -- sqlite is only needed if you want to use frecency sorting
    -- dependencies = { 'kkharji/sqlite.lua' }
  },
  -- {
  --   "ojroques/nvim-osc52"
  -- },
  -- return {
  {
    "ojroques/nvim-osc52",
    keys = {
      {
        "<leader>y",
        function() return require("osc52").copy_operator() end, -- <-- previously I wasn't using a return statement here
        desc = "copy selection to system clipboard (normal mode)",
        expr = true,
      },
      {
        "<leader>Y",
        "<leader>y_",
        remap = true,
        desc = "copy current line into system clipboard (normal mode)",
      },
      {
        mode = "v",
        "<leader>y",
        function() require("osc52").copy_visual() end,
        desc = "copy selection to system clipboard (visual mode)",
      },
    },
  },
  -- { "navarasu/onedark.nvim.git", name="navarasu-onedark", lazy = false },
  { "saforem2/glitz", lazy = false, enabled = true },
  { "p00f/nvim-ts-rainbow" },
  { "NTBBloodbath/doom-one.nvim" },
  { "marko-cerovac/material.nvim" },
  { "sainnhe/sonokai" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "tanvirtin/monokai.nvim" },
  { "yonlu/omni.vim", lazy = false },
  -- { "LunarVim/bigfile.nvim" },
  -- { "lukas-reineke/onedark.nvim", name="lukas-onedark", lazy=false, enabled = true },
  -- { "dstein64/vim-startuptime" },
  -- { "rktjmp/shipwright.nvim" },
  -- { "navarasu/onedark.nvim", lazy=false, enabled=true },
  -- { "navarasu/onedark.nvim" },
  -- { "bluz71/vim-nightfly-guicolors" },
  -- { "rafamadriz/neon" },
  -- { "sainnhe/sonokai" },
  -- { "lukas-reinke/indent-blankline.nvim", enabled = false },
  { "wakatime/vim-wakatime" },
  { "mbbill/undotree" },
  -- { "kosayoda/nvim-lightbulb" },
  { "machakann/vim-sandwich" },
  { "rktjmp/lush.nvim" },
  { "vim-python/python-syntax" },
  { "Vimjas/vim-python-pep8-indent" },
  { "rafcamlet/nvim-luapad" },
  { "tpope/vim-repeat" },
  { "easymotion/vim-easymotion" },
  { "lervag/vimtex" },
  -- { "simrat39/symbols-outline.nvim", cmd = "SymbolsOutline" },
  { "folke/trouble.nvim", cmd = "TroubleToggle" },
  -- { "chaoren/vim-wordmotion" },
  -- { "jbyuki/nabla.nvim" },
  { "knubie/vim-kitty-navigator" },
  { "fladson/vim-kitty" },
  { "jmbuhr/otter.nvim", opts = {} },
  { "folke/lsp-colors.nvim", event = "BufRead" },
  -- { "felipec/vim-sanegx" },
  -- { "godlygeek/tabular" },
  { "brenoprata10/nvim-highlight-colors" },
  { "nvim-telescope/telescope-file-browser.nvim" },
  { "rrethy/vim-illuminate" },
  { "dhruvasagar/vim-table-mode" },
  { "jghauser/mkdir.nvim" },
  { "hkupty/iron.nvim" },
  { "Bekaboo/deadcolumn.nvim" },
  { "rktjmp/lush.nvim" },
  { "bfredl/nvim-ipy" },
  { "ggandor/lightspeed.nvim", event = "BufRead" },
  {
    "HiPhish/rainbow-delimiters.nvim",
    config = function() require("rainbow-delimiters.setup").setup {} end,
  },
  -- { "HiPhish/nvim-ts-rainbow2" },
  { "npxbr/glow.nvim", ft = { "markdown", "quarto" } },
  -- { "preservim/vim-pencil" },
  -- { "lvimuser/lsp-inlayhints.nvim" },
  -- { "vim-pandoc/vim-pandoc" },
  -- { "vim-pandoc/vim-pandoc-syntax" },

  -- {
  --   "jakewvincent/mkdnflow.nvim",
  --   ft = { "markdown", "quarto" },
  --   config = function()
  --     require("mkdnflow").setup {
  --       mappings = {
  --         MkdnFoldSection = { "n", "<leader>k" },
  --         MkdnUnfoldSection = { "n", "<leader>K" },
  --       },
  --       -- SAMPLE FOLDTEXT CONFIGURATION RECIPE WITH COMMENTS
  --       -- Other config options
  --       foldtext = {
  --         title_transformer = function()
  --           local function my_title_transformer(text)
  --             local updated_title = text:gsub("%b{}", "")
  --             updated_title = updated_title:gsub("^%s*", "")
  --             updated_title = updated_title:gsub("%s*$", "")
  --             updated_title = updated_title:gsub("^######", "░░░░░▓")
  --             updated_title = updated_title:gsub("^#####", "░░░░▓▓")
  --             updated_title = updated_title:gsub("^####", "░░░▓▓▓")
  --             updated_title = updated_title:gsub("^###", "░░▓▓▓▓")
  --             updated_title = updated_title:gsub("^##", "░▓▓▓▓▓")
  --             updated_title = updated_title:gsub("^#", "▓▓▓▓▓▓")
  --             return updated_title
  --           end
  --           return my_title_transformer
  --         end,
  --         object_count_icon_set = "nerdfont", -- Use/fall back on the nerdfont icon set
  --         object_count_opts = function()
  --           local opts = {
  --             link = false, -- Prevent links from being counted
  --             blockquote = { -- Count block quotes (these aren't counted by default)
  --               icon = " ",
  --               count_method = {
  --                 pattern = { "^>.+$" },
  --                 tally = "blocks",
  --               },
  --             },
  --             fncblk = {
  --               -- Override the icon for fenced code blocks with 
  --               icon = " ",
  --             },
  --           }
  --           return opts
  --         end,
  --         line_count = false, -- Prevent lines from being counted
  --         word_count = true, -- Count the words in the section
  --         fill_chars = {
  --           left_edge = "╾─🖿 ─",
  --           right_edge = "──╼",
  --           item_separator = " · ",
  --           section_separator = " // ",
  --           left_inside = " ┝",
  --           right_inside = "┥ ",
  --           middle = "─",
  --         },
  --       },
  --     }
  --   end,
  -- },

  {
    "preservim/vim-markdown",
    dependencies = { "godlygeek/tabular" },
    config = function()
      -- vim.cmd[[
      --   autogroup markdownmappings
      --     autocmd!
      --     autocmd FileType markdown nmap <buffer> ]] <Plug>Markdown_MoveToNextHeader
      --     autocmd FileType markdown nmap <buffer> [[ <Plug>Markdown_MoveToPreviousHeader
      -- ]]
    end,
  },
  { -- install without yarn or npm
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    "MeanderingProgrammer/markdown.nvim",
    name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
    ft = { "markdown", "quarto" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      {
        "tadmccorkle/markdown.nvim",
        event = "VeryLazy",
        ft = { "markdown", "quarto" },
        -- config = function() require("markdown").setup {} end,
      },
    },
    config = function()
      require("render-markdown").setup {
        win_options = {
          conceallevel = {
            -- Used when not being rendered, get user setting
            default = vim.api.nvim_get_option_value("conceallevel", {}),
            -- Used when being rendered, concealed text is completely hidden
            rendered = 0,
          },
        },
      }
    end,
  },

  { -- interactive global search and replace
    "nvim-pack/nvim-spectre",
    cmd = { "Spectre" },
    dependencies = {
      "nvim-lua/plenary.nvim",
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

  -- {
  --   "hoschi/yode-nvim",
  --   config = function() require("yode-nvim").setup {} end,
  -- },

  -- {
  --   "kdheepak/tabline.nvim",
  --   config = function()
  --     require("tabline").setup {
  --       -- Defaults configuration options
  --       enable = true,
  --       options = {
  --         -- If lualine is installed tabline will use separators configured in lualine by default.
  --         -- These options can be used to override those settings.
  --         -- section_separators = { '', '' },
  --         -- component_separators = { '', '' },
  --         max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
  --         show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
  --         show_devicons = true, -- this shows devicons in buffer section
  --         show_bufnr = false, -- this appends [bufnr] to buffer section,
  --         show_filename_only = true, -- shows base filename only instead of relative path in filename
  --         -- modified_icon = "+ ", -- change the default modified icon
  --         modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified
  --         show_tabs_only = false, -- this shows only tabs instead of tabs + buffers
  --       },
  --     }
  --   end,
  -- },

  {
    "romgrk/nvim-treesitter-context",
    config = function()
      require("treesitter-context").setup {
        enable = false, -- Enable this plugin (Can be enabled/disabled later via commands)
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
        signs = true, -- show icons in the signs column
        sign_priority = 8, -- sign priority
        -- keywords recognized as todo comments
        keywords = {
          FIX = {
            icon = " ", -- icon used for the sign, and in search results
            color = "error", -- can be a hex color, or a named color (see below)
            alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
            -- signs = false, -- configure signs for some keywords individually
          },
          TODO = { icon = " ", color = "info" },
          HACK = { icon = " ", color = "warning" },
          WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
          PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
          NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
          TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
        },
        gui_style = {
          fg = "NONE", -- The gui style to use for the fg highlight group.
          bg = "BOLD", -- The gui style to use for the bg highlight group.
        },
        merge_keywords = true, -- when true, custom keywords will be merged with the defaults
        -- highlighting of the line containing the todo comment
        -- * before: highlights before the keyword (typically comment characters)
        -- * keyword: highlights of the keyword
        -- * after: highlights after the keyword (todo text)
        highlight = {
          multiline = true, -- enable multine todo comments
          multiline_pattern = "^.", -- lua pattern to match the next multiline from the start of the matched keyword
          multiline_context = 10, -- extra lines that will be re-evaluated when changing a line
          before = "", -- "fg" or "bg" or empty
          keyword = "wide", -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
          after = "", -- "fg" or "bg" or empty
          pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlighting (vim regex)
          comments_only = true, -- uses treesitter to match keywords in comments only
          max_line_len = 400, -- ignore lines longer than this
          exclude = {}, -- list of file types to exclude highlighting
        },
        -- list of named colors where we try to extract the guifg from the
        -- list of highlight groups or use the hex color if hl not found as a fallback
        colors = {
          error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
          warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
          info = { "DiagnosticInfo", "#2563EB" },
          hint = { "DiagnosticHint", "#10B981" },
          default = { "Identifier", "#7C3AED" },
          test = { "Identifier", "#FF00FF" },
        },
        search = {
          command = "rg",
          args = {
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
          },
          -- regex that will be used to match keywords.
          -- don't replace the (KEYWORDS) placeholder
          pattern = [[\b(KEYWORDS):]], -- ripgrep regex
          -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
        },
      }
    end,
  },
  -- {
  --   "mfussenegger/nvim-dap-python",
  --   config = function() require("dap-python").setup "~/.virtualenvs/debugpy/bin/python" end,
  -- },
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
  -- {
  --   "nvim-telescope/telescope-fzf-native.nvim",
  --   run = "make",
  --   lazy = false,
  -- },
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
    event = "BufEnter",
    config = function()
      --   require("codeium").setup({})
      vim.g.codeium_disable_bindings = 1
      vim.keymap.set("i", "<C-g>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
      vim.keymap.set("i", "<c-;>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
      vim.keymap.set("i", "<c-,>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
      vim.keymap.set("i", "<c-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true })
    end,
    -- dependencies = {
    --   "nvim-lua/plenary.nvim",
    --   "hrsh7th/nvim-cmp",
    -- },
    -- lazy = false,
    -- enabled = true,
    -- config = function() require("codeium").setup {} end,
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
    "NvChad/nvim-colorizer.lua",
    enabled = true,
    opts = {
      filetypes = { "*" },
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
        mode = "background", -- Set the display mode.
        -- Available methods are false / true / "normal" / "lsp" / "both"
        -- True is same as normal
        tailwind = false, -- Enable tailwind colors
        -- parsers can contain values used in |user_default_options|
        sass = { enable = false, parsers = { "css" } }, -- Enable sass colors
        virtualtext = "■",
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
