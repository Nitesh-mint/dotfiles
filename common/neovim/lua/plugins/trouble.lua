return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local trouble = require("trouble")

		trouble.setup({
			modes = {
				preview_float = {
					mode = "diagnostics",
					preview = {
						type = "split",
						relative = "win",
						position = "right",
						size = 0.3,
					},
				},
			},
		})

		vim.keymap.set("n", "<leader>xx", function()
			trouble.toggle("preview_float")
		end, { silent = true, noremap = true })
	end,
}
