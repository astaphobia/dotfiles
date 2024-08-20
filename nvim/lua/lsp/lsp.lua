require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"typos_lsp",
		"lua_ls", -- lua
		"jsonls", -- json
		"tsserver", -- typescript
		"intelephense", -- php
		"phpactor", -- php
		"graphql",
		"gopls" -- go
	},
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end
	}
})

require("lsp.autocmp")
require("formatter.formatter")

-- Enable "go to definition" (gd) capabilities
vim.keymap.set("n", "<leader>gd", function()
    vim.lsp.buf.definition()
end, { desc = "LSP Goto Definition" })

-- Enable "go to references" (gr) capabilities
vim.keymap.set("n", "<leader>gr", function()
	vim.lsp.buf.references()
end, { desc = "LSP Goto References" })
