-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 2, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = false,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "auto", -- sets vim.opt.signcolumn to auto
        wrap = false, -- sets vim.opt.wrap
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs with `H` and `L`
        -- L = {
        --   function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
        --   desc = "Next buffer",
        -- },
        -- H = {
        --   function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
        --   desc = "Previous buffer",
        -- },

        -- mappings seen under group name "Buffer"
        ["<Leader>bD"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Pick to close",
        },
        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<Leader>b"] = { desc = "Buffers" },
        -- quick save
        -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        ["<S-W>"] = {
            "<cmd>HopWord<CR>",
            desc = "Hop Word",
        },
        ["<S-h>"] = {
            "<cmd>HopChar2<CR>",
            desc = "Hop Char 2"
        },
        ["<leader>b<"] = {
            "<cmd>BufferMovePrevious<cr>",
            desc="[BarBar] Buffer Move Previous"
        },
        ["<leader>b>"] = {
            "<cmd>BufferMoveNext<cr>",
            desc="[BarBar] Buffer Move Next"
        },
        -- second key is the lefthand side of the map
        -- mappings seen under group name "Buffer"
        ["\\"] = {
            "<cmd>lua require('notify').dismiss()<CR>",
            desc = "Dismiss Notification"
        },
        ["gD"] = {
            vim.lsp.buf.declaration,
        },
        ["<leader>\\"] = {"<cmd>QuartoPreview<cr>", desc = "Quarto Preview"},
        ["<leader>d"] = {[["_d]], desc = "Beginning of line"},
        ["0"] = {"^", desc = "Beginning of line"},
        ["<C-J>"] = {"J", desc = "Join line"},
        ["X"] = {
            [[:keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>]],
            desc = "Split line"
        },
        ["<leader>bn"] = {"<cmd>tabnew<cr>", desc = "New tab"},
        ["<leader>bD"] = {
            function()
                require("astronvim.utils.status").heirline.buffer_picker(
                    function(bufnr)
                        require("astronvim.utils.buffer").close(bufnr)
                    end)
            end,
            desc = "Pick to close"
        },
        -- tables with the `name` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<leader>b"] = {name = "Buffers"},
        -- ["<leader>tr"] = {"<cmd>IronRepl<cr>", desc = "Iron REPL"},
        -- ["<leader>t<space>"] = {"<cmd>IronFocus<cr>", desc = "Iron Focus"},
        -- ["<leader>tH"] = {"<cmd>IronHide<cr>", desc = "Iron Hide"}
        -- quick save
        ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
      },
      t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
      },
    },
  },
}
