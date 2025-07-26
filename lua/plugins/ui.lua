return {
	{
		-- Main Theme
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function(_, opts)
			require("tokyonight").setup({
				style = "moon",
				light_style = "day",
				transparent = true,
				terminal_colors = true,
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
				},
				lualine_bold = true,
				-- For better performance
				cache = true,
				on_highlights = function(hl)
					local fgcolor = "#636da6"
					local bgcolor = "none"
					local colors = require("tokyonight.colors").setup()
					hl.MsgArea = { fg = colors.fg_float }
					hl.LineNrAbove = { fg = fgcolor, bg = bgcolor }
					hl.LineNrBelow = { fg = fgcolor, bg = bgcolor }
					hl.Comment = { fg = fgcolor, bg = bgcolor }
					hl.CursorLineNr = { fg = colors.orange, bold = true }
				end,
			})
		end,
	},

	-- Status Line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					-- ... your lualine config
					theme = "tokyonight",
					-- ... your lualine config
				},
			})
		end,
	},

}
