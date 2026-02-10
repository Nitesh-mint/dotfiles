return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({})
		end,
	},
	{ "ThePrimeagen/vim-be-good" },
	{ "OmniSharp/omnisharp-vim" },
	{ "tpope/vim-commentary" },
	{ "Mofiqul/dracula.nvim" },
}
