return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
 	 lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local get_header = require("utils.startpage-headers")

        require("dashboard").setup({
            theme = "doom",
            config = {
                header = get_header(1, false),
                center = {
                    {
                        icon = "",
                        icon_hl = "Title",
                        desc = "  Love COMPUTER",
                        desc_hl = "String",
                        key_format = " %s",
                    },
                },
                footer = function()
                    local stats = require("lazy").stats()
                    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                    return {
                        "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms",
                    }
                end,
            },
        })
    end,
}
