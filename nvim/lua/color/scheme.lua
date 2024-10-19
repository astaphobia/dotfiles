require("themer").setup({
	colorscheme = "onedark",
	transparent = true,
	styles = {
		["function"] = { style = "italic" },
		functionbuiltin = { style = "italic" },
		variable = { style = "italic" },
		variablebuiltin = { style = "italic" },
		parameter = { style = "italic" },
		todo = { style = "italic" }
	},
	langs = {
		html = true,
		md = true,
		lua = true
	}
})

-- Require 'nvim-telescope/telescope.nvim' installed
-- Usage is :Telescope themes
require("telescope").load_extension("themes")

