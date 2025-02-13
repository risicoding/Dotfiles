return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catppuccin-mocha")
		require("catppuccin").setup({
			color_overrides = {
				all = {
					base = "#ffffff",
				},
				mocha = {
					base = "#ffffff",
				},
			},
		})
	end,
}

-- return {
-- 	"shaunsingh/nord.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd.colorscheme("nord")
-- 	end,
-- }
--
-- return {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	config = function()
-- 		vim.cmd.colorscheme("tokyonight")
-- 	end,
-- }

-- return {
-- 	"morhetz/gruvbox",
-- 	config = function()
-- 		vim.g.gruvbox_contrast_dark = "hard"
-- 		vim.cmd.colorscheme("gruvbox")
-- 	end,
-- }
