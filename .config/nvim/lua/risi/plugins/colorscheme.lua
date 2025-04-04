-- ROSEPINE
-- lua/plugins/rose-pine.lua
-- return {
-- 	"rose-pine/neovim",
-- 	name = "rose-pine",
-- 	config = function()
-- 		vim.cmd("colorscheme rose-pine")
-- 		require("rose-pine").setup({
-- 			variant = "auto", -- auto, main, moon, or dawn
-- 			dark_variant = "main", -- main, moon, or dawn
-- 			dim_inactive_windows = false,
-- 			extend_background_behind_borders = true,
--
-- 			enable = {
-- 				terminal = true,
-- 				legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
-- 				migrations = true, -- Handle deprecated options automatically
-- 			},
--
-- 			styles = {
-- 				bold = true,
-- 				italic = false,
-- 				transparency = false,
-- 			},
--
-- 			groups = {
-- 				border = "muted",
-- 				link = "iris",
-- 				panel = "surface",
--
-- 				error = "love",
-- 				hint = "iris",
-- 				info = "foam",
-- 				note = "pine",
-- 				todo = "rose",
-- 				warn = "gold",
--
-- 				git_add = "foam",
-- 				git_change = "rose",
-- 				git_delete = "love",
-- 				git_dirty = "rose",
-- 				git_ignore = "muted",
-- 				git_merge = "iris",
-- 				git_rename = "pine",
-- 				git_stage = "iris",
-- 				git_text = "rose",
-- 				git_untracked = "subtle",
--
-- 				h1 = "iris",
-- 				h2 = "foam",
-- 				h3 = "rose",
-- 				h4 = "gold",
-- 				h5 = "pine",
-- 				h6 = "foam",
-- 			},
--
-- 			palette = {
-- 				-- Override the builtin palette per variant
-- 				-- moon = {
-- 				--     base = '#18191a',
-- 				--     overlay = '#363738',
-- 				-- },
-- 			},
--
-- 			-- NOTE: Highlight groups are extended (merged) by default. Disable this
-- 			-- per group via `inherit = false`
-- 			highlight_groups = {
-- 				-- Comment = { fg = "foam" },
-- 				-- StatusLine = { fg = "love", bg = "love", blend = 15 },
-- 				-- VertSplit = { fg = "muted", bg = "muted" },
-- 				-- Visual = { fg = "base", bg = "text", inherit = false },
-- 			},
--
-- 			before_highlight = function(group, highlight, palette)
-- 				-- Disable all undercurls
-- 				-- if highlight.undercurl then
-- 				--     highlight.undercurl = false
-- 				-- end
-- 				--
-- 				-- Change palette colour
-- 				-- if highlight.fg == palette.pine then
-- 				--     highlight.fg = palette.foam
-- 				-- end
-- 			end,
-- 		})
--
-- 		-- vim.cmd("colorscheme rose-pine")
-- 		-- -- vim.cmd("colorscheme rose-pine-main")
-- 		-- vim.cmd("colorscheme rose-pine-moon")
-- 		-- vim.cmd("colorscheme rose-pine-dawn")
-- 	end,
-- }
--
-- -- -- GRUVBOX
-- return {
-- 	"ellisonleao/gruvbox.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd.colorscheme("gruvbox")
-- 		require("gruvbox").setup({
-- 			terminal_colors = true, -- add neovim terminal colors
-- 			undercurl = true,
-- 			underline = true,
-- 			bold = false,
-- 			italic = {
-- 				strings = false,
-- 				emphasis = false,
-- 				comments = false,
-- 				operators = false,
-- 				folds = false,
-- 			},
-- 			strikethrough = false,
-- 			invert_selection = false,
-- 			invert_signs = false,
-- 			invert_tabline = false,
-- 			invert_intend_guides = false,
-- 			inverse = true, -- invert background for search, diffs, statuslines and errors
-- 			contrast = "", -- can be "hard", "soft" or empty string
-- 			palette_overrides = {},
-- 			overrides = {},
-- 			dim_inactive = false,
-- 			transparent_mode = false,
-- 		})
-- 	end,
-- }

-- catppuccin
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

-- TOKYONIGHT
-- return {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	config = function()
-- 		vim.cmd.colorscheme("tokyonight-day")
-- 	end,
-- }

-- return {
-- 	"morhetz/gruvbox",
-- 	config = function()
-- 		vim.g.gruvbox_contrast_dark = "hard"
-- 		vim.cmd.colorscheme("gruvbox")
-- 	end,
-- }
