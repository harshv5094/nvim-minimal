return {
	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"git_config",
        "markdown",
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
      })
    end
	},

	-- Treesitter Context
	{
		"nvim-treesitter/nvim-treesitter-context",
    event = "VeryLazy",
		opts = function()
			local context = require("treesitter-context")
			local opts = context.setup({
				enable = true,
				max_lines = 0,
				min_window_height = 0,
				line_numbers = true,
				multiline_threshold = 20,
				trim_scope = "outer",
				mode = "cursor",
				seperator = nil,
				zindex = 10,
				on_attach = nil,
			})
			return opts
		end,
	},
}
