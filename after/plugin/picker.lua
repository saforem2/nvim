require("fzf-lua").setup({
  winopts = { preview = { default = "bat" } },
})

local map = vim.keymap.set
local fzf = require("fzf-lua")

-- Find
map("n", "<leader>ff", fzf.files, { desc = "Find Files" })
map("n", "<leader>fb", fzf.buffers, { desc = "Buffers" })
map("n", "<leader>fh", fzf.helptags, { desc = "Help Tags" })
map("n", "<leader>fr", fzf.registers, { desc = "Registers" })
map("n", "<leader>fj", fzf.jumps, { desc = "Jumps" })
map("n", "<leader>fm", fzf.marks, { desc = "Marks" })
map("n", "<leader>fk", fzf.keymaps, { desc = "Keymaps" })
map("n", "<leader>fc", fzf.colorschemes, { desc = "Colorschemes" })

-- Search
map("n", "<leader>sg", fzf.live_grep, { desc = "Live Grep" })
map("n", "<leader>sw", fzf.grep_cword, { desc = "Grep Word" })
map("n", "<leader>sl", fzf.blines, { desc = "Buffer Lines" })
map("n", "<leader>s:", fzf.command_history, { desc = "Command History" })
map("n", "<leader>s/", fzf.search_history, { desc = "Search History" })
map("n", "<leader>sh", fzf.highlights, { desc = "Highlights" })

-- LSP
map("n", "<leader>cs", fzf.lsp_document_symbols, { desc = "Document Symbols" })
map("n", "<leader>cS", fzf.lsp_workspace_symbols, { desc = "Workspace Symbols" })
map("n", "<leader>cr", fzf.lsp_references, { desc = "References" })

-- Commands
map("n", "<leader>sc", fzf.commands, { desc = "Commands" })
map("n", "<leader>sk", fzf.keymaps, { desc = "Keymaps" })

-- Meta
map("n", "<leader>fp", fzf.builtin, { desc = "All Pickers" })
