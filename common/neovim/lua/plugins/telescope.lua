-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>ps', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") });
-- end)
-- vim.keymap.set('n', '<leader>pf', builtin.loclist, {})
-- vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>f/', builtin.live_grep, {})


return {
	'nvim-telescope/telescope.nvim', version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		-- optional but recommended
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	keys = {
		{ "<leader>ff", require("telescope.builtin").find_files, desc = "Find files" },
		{ "<leader>ps", function()
			require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
		end, desc = "Grep string" },
		{ "<leader>pf", require("telescope.builtin").loclist, desc = "Loclist" },
		{ "<leader>gf", require("telescope.builtin").git_files, desc = "Git files" },
		{ "<leader>f/", require("telescope.builtin").live_grep, desc = "Live grep" },
	}
}
