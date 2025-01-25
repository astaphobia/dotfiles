require("mason-null-ls").setup({
    ensure_installed = {
        -- Opt to list sources here, when available in mason.
	"luacheck",
	"prettierd", -- prettier daemon for prettier
	"prettier", -- formatter
	"eslint_d",
	"pint", -- laravel
	"php-cs-fixer",
	"editorconfig-checker",
	"shfmt",
	"graphql_language_service_cli",
	"tflint",
	"tfsec",
	"hclfmt",
	"golangci-lint",
    },
    methods = {
	diagnostics = true,
	formatting = true,
	code_actions = true,
	completion = true,
	hover = true,
    },
    automatic_installation = false,
    handlers  = {}
})

require("formatter.autoformat")
vim.g.editorconfig = true
vim.g.EditorConfig_core_mode = 'extermal_command'
