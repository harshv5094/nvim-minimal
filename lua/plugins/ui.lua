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
					-- hl.MsgArea = { fg = colors.fg_float }
					hl.LineNrAbove = { fg = fgcolor, bg = bgcolor }
					hl.LineNrBelow = { fg = fgcolor, bg = bgcolor }
					hl.Comment = { fg = fgcolor, bg = bgcolor }
					hl.CursorLineNr = { fg = colors.orange, bold = true }
          hl.TreesitterContextLineNumberBottom = { fg = fgcolor, bg = bgcolor }
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

	-- Noice UI
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"folke/snacks.nvim", -- snacks for minimal notifications
		},
		config = function()
			require("noice").setup({
				presets = {
					bottom_search = true,
					command_palette = true,
					long_message_to_split = true,
				},
			})
		end,
	},

{
  "j-hui/fidget.nvim",
  event = "BufReadPre",
  config = function()
    require("fidget").setup({
      notification = {
        window = {
          winblend = 0
        }
      }
    })
  end,
}
}
