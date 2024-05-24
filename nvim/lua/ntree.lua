require('nvim-tree').setup({
	disable_netrw = true,
	hijack_netrw = true, 
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
	},
	renderer = {
		group_empty = true, 
	},
	filters = {
		git_ignored = false, 
		dotfiles = false,
	},
	live_filter = {
		always_show_folders = false
	}
})

vim.api.nvim_set_keymap("n", "<C-h>", ":NvimTreeToggle<cr>", {silent = true, noremap = true})
vim.api.nvim_tree_gitignore = 1
