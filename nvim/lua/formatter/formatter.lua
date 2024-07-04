require("mason-null-ls").setup({
    ensure_installed = {
        -- Opt to list sources here, when available in mason.
	"stylelua",
	"prettierd",
	"eslint",
	"pint" -- laravel
    },
    automatic_installation = false,
    handlers = {},
})

local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        -- Anything not supported by mason.
    }
})

