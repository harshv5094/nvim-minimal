return {
	{
    -- Main Theme
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
    opts = {
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
			cache = true
    },
    config = function(_,opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")
    end
	},

  -- Status Line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require("lualine").setup({
 options = {
    -- ... your lualine config
    theme = 'tokyonight'
    -- ... your lualine config
  }
      })
    end
  },

  -- Which Key
    {
      "folke/which-key.nvim"
    }

}
