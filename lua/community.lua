-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- { import = "astrocommunity.colorscheme.dracula-nvim" },
  -- { import = "astrocommunity.colorscheme.sonokai" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  -- { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.cs" },
  { import = "astrocommunity.pack.full-dadbod" },
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.color.modes-nvim" },
  { import = "astrocommunity.color.vim-highlighter" },
  { import = "astrocommunity.terminal-integration.vim-tpipeline" },
  { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },
  { import = "astrocommunity.recipes.neo-tree-dark" },
  -- { import = "astrocommunity.recipes.telescope-lsp-mappings" },
  { import = "astrocommunity.recipes.vscode-icons" },
  { import = "astrocommunity.file-explorer.oil-nvim" },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.editing-support.refactoring-nvim" },
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.completion.cmp-cmdline" },
  { import = "astrocommunity.completion.codeium-vim" },
  { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  { import = "astrocommunity.lsp.inc-rename-nvim" },
  -- import/override with your plugins folder
}
