return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	auto_integrations = true,
	config = function()
		vim.opt.termguicolors = true

		require("bufferline").setup({
			options = {
				mode = "buffers",
				separator_style = "thin",
				always_show_bufferline = true,
				show_buffer_close_icons = true,
				show_close_icon = true,
				color_icons = true,
				diagnostics = "nvim_lsp",
				hover = {
					enabled = true,
					delay = 200,
					reveal = {'close'}
				}

			},
		})
	end,
}
