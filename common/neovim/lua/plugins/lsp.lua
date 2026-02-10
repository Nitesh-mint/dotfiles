return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v3.x",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/nvim-cmp",
		"L3MON4D3/LuaSnip",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
		"hrsh7th/cmp-nvim-lua",
        "nvimdev/lspsaga.nvim",
	},
	config = function()
		local lsp_zero = require("lsp-zero")

		lsp_zero.on_attach(function(client, bufnr)
			lsp_zero.default_keymaps({ buffer = bufnr })
			vim.keymap.set("n", "gd", function()
				vim.lsp.buf.definition()
			end, { buffer = bufnr })
		end)

		require("mason").setup()
		require("mason-lspconfig").setup({
			-- ensure_installed = { "eslint", "pyright", "csharp_ls", "ts_ls" }, with c# lsp
			ensure_installed = { "eslint", "pyright", "ts_ls" },
			handlers = {
				function(server_name)
					if server_name == "tsserver" then
						require("lspconfig").tsserver.setup({
							on_attach = function(client, bufnr)
								lsp_zero.default_keymaps({ buffer = bufnr })
								vim.keymap.set("n", "gd", function()
									vim.lsp.buf.definition()
								end, { buffer = bufnr })
							end,
							settings = {
								typescript = {
									inlayHints = {
										includeInlayParameterNameHints = "all",
										includeInlayParameterNameHintsWhenArgumentMatchesName = false,
										includeInlayFunctionParameterTypeHints = true,
										includeInlayVariableTypeHints = true,
									},
								},
								javascript = {
									inlayHints = {
										includeInlayParameterNameHints = "all",
										includeInlayParameterNameHintsWhenArgumentMatchesName = false,
										includeInlayFunctionParameterTypeHints = true,
										includeInlayVariableTypeHints = true,
									},
								},
							},
						})
					else
						require("lspconfig")[server_name].setup({})
					end
				end,
			},
		})
        
        -- LSPSaga setup if needed (mentioned in packer)
        require("lspsaga").setup({})

		-- configure autocomplete
		local cmp = require("cmp")

		cmp.setup({
			mapping = {
				["<Tab>"] = cmp.mapping.select_next_item(),
				["<M-Tab>"] = cmp.mapping.select_prev_item(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			},
			sources = {
				{ name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "buffer" },
                { name = "path" },
			},
		})
	end,
}
