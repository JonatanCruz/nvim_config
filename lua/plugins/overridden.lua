-- Override AstroNvim with your own plugins
---@type LazySpec
return {
  -- Disabled hearline
  {
    "rebelot/heirline.nvim",
    enabled = false,
  },

  -- modicator (auto color line number based on vim mode)
  {
    "mawkler/modicator.nvim",
    dependencies = "scottmckendry/cyberdream.nvim",
    init = function()
      -- These are required for Modicator to work
      vim.o.cursorline = false
      vim.o.number = true
      vim.o.termguicolors = true
    end,
    opts = {},
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
        mappings = {
          ["Y"] = "none",
        },
      },
      filesystem = {
        filtered_items = {
          always_show = {
            ".env",
          },
        },
      },
    },
  },
}
