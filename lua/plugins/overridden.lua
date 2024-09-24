-- Override AstroNvim with your own plugins
---@type LazySpec
return {
  -- Disabled hearline
  {
    "rebelot/heirline.nvim",
    enabled = false,
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      local custom_dracula = require "lualine.themes.dracula"
      require("lualine").setup {
        options = {
          theme = custom_dracula,
          -- ... your lualine config
        },
      }
    end,
  },
}
