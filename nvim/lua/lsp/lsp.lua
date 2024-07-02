require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"typos_lsp",
		"lua_ls", -- lua
		"jsonls", -- json
		"tsserver", -- typescript
		"intelephense", -- php
		"phpactor", -- php
		"graphql"
	---	"gopls" -- go
	},
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end
	}
})

require("lsp.autocmp")
require("formatter.formatter")
