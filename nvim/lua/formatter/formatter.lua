require("mason-null-ls").setup({
    ensure_installed = {
        -- Opt to list sources here, when available in mason.
	"stylelua",
	"prettierd", -- prettier daemon for prettier
	"prettier", -- formatter
	"eslint_d",
	"pint", -- laravel
	"php-cs-fixer",
	"editorconfig-checker",
	"shfmt",
	"graphql_language_service_cli",
	"graphql",
	"tflint",
	"tfsec",
	"hclfmt"
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
