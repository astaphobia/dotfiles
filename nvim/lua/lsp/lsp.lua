require("mason").setup({
	ui = {
		icons = {
			package_installed = "⚡︎",
			package_pending = "✈",
			package_uninstalled = "◉",
		},
	},
})
require("mason-lspconfig").setup({
	ensure_installed = {
		"vimls",
		"typos_lsp",
		"lua_ls", -- lua
		"jsonls", -- json
		"ts_ls", -- typescript
		"intelephense", -- php
		"phpactor", -- php
		"gopls", -- go
		"terraformls", -- terraform
		"helm_ls",
		"yamlls", -- yaml,yml
		"docker_compose_language_service",
		"dockerls",
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
