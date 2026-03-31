require("CopilotChat").setup({})

local map = vim.keymap.set
map("n", "<leader>ac", "<cmd>CopilotChatToggle<cr>", { desc = "Toggle Copilot Chat" })
map("n", "<leader>ao", "<cmd>CopilotChatOpen<cr>", { desc = "Open Copilot Chat" })
map("n", "<leader>ar", "<cmd>CopilotChatReset<cr>", { desc = "Reset Copilot Chat" })
map({ "n", "v" }, "<leader>ae", "<cmd>CopilotChatExplain<cr>", { desc = "Explain Selection" })
map({ "n", "v" }, "<leader>af", "<cmd>CopilotChatFix<cr>", { desc = "Fix Selection" })
