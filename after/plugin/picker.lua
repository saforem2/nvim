require("picker").setup()

local map = vim.keymap.set

-- Find
map("n", "<leader>ff", "<cmd>Picker files<cr>", { desc = "Find Files" })
map("n", "<leader>fb", "<cmd>Picker buffers<cr>", { desc = "Buffers" })
map("n", "<leader>fh", "<cmd>Picker help_tags<cr>", { desc = "Help Tags" })
map("n", "<leader>fr", "<cmd>Picker registers<cr>", { desc = "Registers" })
map("n", "<leader>fj", "<cmd>Picker jumps<cr>", { desc = "Jumps" })
map("n", "<leader>fm", "<cmd>Picker marks<cr>", { desc = "Marks" })
map("n", "<leader>fk", "<cmd>Picker key-mappings<cr>", { desc = "Keymaps" })
map("n", "<leader>fc", "<cmd>Picker colorscheme<cr>", { desc = "Colorschemes" })

-- Search
map("n", "<leader>sg", "<cmd>Picker grep<cr>", { desc = "Grep" })
map("n", "<leader>sl", "<cmd>Picker lines<cr>", { desc = "Buffer Lines" })
map("n", "<leader>s:", "<cmd>Picker cmd_history<cr>", { desc = "Command History" })
map("n", "<leader>s/", "<cmd>Picker search_history<cr>", { desc = "Search History" })
map("n", "<leader>sh", "<cmd>Picker highlights<cr>", { desc = "Highlights" })
map("n", "<leader>se", "<cmd>Picker emoji<cr>", { desc = "Emoji" })

-- LSP (via picker)
map("n", "<leader>cs", "<cmd>Picker lsp_document_symbols<cr>", { desc = "Document Symbols" })
map("n", "<leader>cS", "<cmd>Picker lsp_workspace_symbols<cr>", { desc = "Workspace Symbols" })
map("n", "<leader>cr", "<cmd>Picker lsp_references<cr>", { desc = "References" })

-- Meta
map("n", "<leader>fp", "<cmd>Picker sources<cr>", { desc = "All Pickers" })
