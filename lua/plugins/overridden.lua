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
      local color_base = "#f8f8f2"
      custom_dracula.normal.a.fg = color_base
      custom_dracula.insert.a.fg = color_base
      custom_dracula.visual.a.fg = color_base
      custom_dracula.replace.a.fg = color_base
      custom_dracula.command.a.fg = color_base

      require("lualine").setup {
        options = {
          theme = custom_dracula,
          -- ... your lualine config
        },
      }
    end,
  },
}
