return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- This control how the window looks
		preset = "icons", -- default, modern look
		spec = {
			-- Label your leader groups here!
			{ "<leader>m", group = "Format" },
			{ "<leader>h", group = "Harpoon" }, -- If you use leader for harpoon
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
