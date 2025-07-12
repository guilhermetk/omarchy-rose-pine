return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
			-- Your configuration options here
			variant = "main", -- Options: 'auto', 'main', 'moon', 'dawn'
			dark_variant = "main", -- Options: 'main', 'moon', 'dawn' (used when variant is 'auto')
			styles = {
				bold = true,
				italic = false,
				transparency = false, -- Set to true for transparent background
			},
			groups = {
				background = "base",
				panel = "surface",
				border = "highlight_med",
				comment = "muted",
				link = "iris",
				punctuation = "subtle",
				error = "love",
				hint = "iris",
				info = "foam",
				warn = "gold",
			},
			highlight_groups = {
				ColorColumn = { bg = "rose" },
				CursorLine = { bg = "foam", blend = 10 },
				StatusLine = { fg = "love", bg = "love", blend = 10 },
				["@string"] = { fg = "foam" }, -- Customize string color
			},
		})
		-- Set the colorscheme after configuration
		vim.cmd("colorscheme rose-pine")
	end,
}
