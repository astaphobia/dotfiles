require("mason-null-ls").setup({
    ensure_installed = {
        -- Opt to list sources here, when available in mason.
	"stylelua",
	"prettierd", -- prettier daemon for prettier
	"prettier", -- formatter
	"eslint_d",
	"pint", -- laravel
	"editorconfig-checker",
	"shfmt",

    },
    methods = {
	diagnostics = true,
	formatting = true,
	code_actions = true,
	completion = true,
	hover = true,
    },
    automatic_installation = true,
    handlers  = {}
})

require("formatter.autoformat")
