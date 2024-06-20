return {
	"folke/tokyonight.nvim",
	"catppuccin/nvim",
	"rose-pine/neovim",
	"navarasu/onedark.nvim",
	"sainnhe/gruvbox-material",
	"akinsho/horizon.nvim",
	{
		"nyoom-engineering/oxocarbon.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			vim.cmd("colorscheme oxocarbon")
		end,
	},
}
