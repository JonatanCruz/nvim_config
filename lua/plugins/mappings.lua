return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- Dadbod open in new tab
          ["<Leader>D"] = { "<cmd>tabnew<cr><bar><bar><cmd>DBUI<cr>", desc = "DBToggle UI" },

          -- navigate buffer tabs with `H` and `L`
          L = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
          H = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(
                function(bufnr) require("astrocore.buffer").close(bufnr) end
              )
            end,
            desc = "Pick to close",
          },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { name = "Buffers" },
          -- quick save
          ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
          n = { "nzzzv", desc = "Next word" },
          N = { "Nzzzv", desc = "Prev word" },
          ["<leader>y"] = { '"+y', desc = "Copy selected text in clipboard too" },
          ["<leader>Y"] = { '"+Y', desc = "Copy selected line in clipboard too" },
          ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Replace text in file" },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
        v = {
          J = { ":m '>+1<CR>gv=gv", desc = "Move selected text down" },
          K = { ":m '<-2<CR>gv=gv", desc = "Move selected text up" },
          ["<leader>y"] = { '"+y', desc = "Copy also in the clipboard" },
        },
        x = {
          ["<leader>p"] = { '"_dP', desc = "Paste without replace the buffer" },
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
          gl = { function() vim.diagnostic.open_float() end, desc = "Hover diagnostics" },
          -- ["<Leader>uY"] = {
          --   function() require("astrolsp.toggles").buffer_semantic_tokens() end,
          --   desc = "Toggle LSP semantic highlight (buffer)",
          --   cond = function(client) return client.server_capabilities.semanticTokensProvider and vim.lsp.semantic_tokens end,
          -- },
        },
      },
    },
  },
}
