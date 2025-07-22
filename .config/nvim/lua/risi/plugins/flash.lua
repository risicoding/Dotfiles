return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  ---@type Flash.Config
  opts = {},
  -- stylua: ignore
  keys = {
    { "<leader>sz", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "flash" },
    { "<leader>fj", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "flash treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "remote flash" },
    -- { "<leader>zs", mode = {"n", "o", "x" }, function() require("flash").treesitter_search() end, desc = "treesitter search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "toggle Flash Search" },
  },
}
