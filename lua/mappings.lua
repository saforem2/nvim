-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
-- vim.api.nvim_set_keymap('n', '0', '^', { silent = true })
-- vim.api.nvim_set_keymap('n', '<C-J>', 'J', { silent = true })
-- vim.api.nvim_set_keymap('n', 'X', [[:keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>]], { silent = true })
-- vim.api.nvim_set_keymap('n', '<C-S>', [[:keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>]], { silent = true })
-- vim.api.nvim_set_keymap('n', '<C-k>', [[:keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>]], { silent = true })
local opts = { noremap = true, silent = false }

return {
    -- first key is the mode
    -- i = {
    --     ["<C-g>"] = { 
    --
    --     }
    -- }
    v = {
        ["<leader>c"] = {
            require('osc52').copy_visual(),
        },
    },
    n = {
        -- ["<leader>c"] = {
        --     require('osc52').copy_operator(),
        --     expr = true,
        -- },
        ["<leader>cc"] = {
            "<leader>c_",
            remap = true,
        },
        ["<S-W"] = {
            "<cmd>HopWord<CR>",
            desc = "Hop Word",
            opts = opts,
        },
        ["<S-h>"] = {
            "<cmd>HopChar2<CR>",
            desc = "Hop Char 2",
            opts = opts,
        },
        ["<leader>b<"] = {
            "<cmd>BufferMovePrevious<cr>",
            desc="[BarBar] Buffer Move Previous",
            opts = opts,
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
        ["<leader>tr"] = {"<cmd>IronRepl<cr>", desc = "Iron REPL"},
        ["<leader>t<space>"] = {"<cmd>IronFocus<cr>", desc = "Iron Focus"},
        ["<leader>tH"] = {"<cmd>IronHide<cr>", desc = "Iron Hide"}
        -- quick save
        -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    },
    t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
    }
}
