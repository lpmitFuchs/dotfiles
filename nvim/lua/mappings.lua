require("nvchad.mappings")
local map = vim.keymap.set

map("n", "<leader>gg", ":LazyGit<CR>", { desc = "LazyGit" })

map("n", "<leader>fg", ":Telescope git_files<CR>", { desc = "Find Git Files" })
map("n", "<leader>fy", ":Telescope yaml_schema<CR>", { desc = "Switch Yaml Schema" })

map("n", "<leader>xx", function()
	require("trouble").toggle()
end, { desc = "Toggle Trouble" })

map("n", "<leader>xw", function()
	require("trouble").toggle("workspace_diagnostics")
end, { desc = "Trouble in Workspace Mode" })

map("n", "<leader>xd", function()
	require("trouble").toggle("document_diagnostics")
end, { desc = "Trouble in Document Mode" })

map("n", "gR", function()
	require("trouble").toggle("lsp_references")
end, { desc = "Trouble - LSP Reference" })
