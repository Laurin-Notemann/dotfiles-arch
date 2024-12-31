return {
	--nvim-treesitter syntax highlighting
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			-- Set .mdx files to use markdown filetype
			vim.cmd([[
        autocmd BufRead,BufNewFile *.mdx set filetype=markdown
      ]])

			local config = require("nvim-treesitter.configs")
			config.setup({
				ensure_installed = {
					"c",
					"lua",
					"javascript",
					"typescript",
					"tsx",
					"html",
					"python",
					"rust",
					"css",
					"dockerfile",
					"go",
					"json",
					"markdown",
					"sql",
					"yaml",
				},
				auto_install = true,
				highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
				indent = { enable = true },
			})
		end,
	},
}
