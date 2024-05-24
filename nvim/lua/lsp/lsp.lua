require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"typos_lsp",
		"lua_ls", -- lua
		"jsonls", -- json
		"tsserver", -- typescript
		"intelephense", -- php
		"gopls" -- go
	}
})
require("lsp.autocmp")
