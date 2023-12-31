-- TODO: test

return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix", "TodoTelescope" },
  },
  {
    "ThePrimeagen/harpoon",
    event = "User AstroFile",
  },
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
  },
}
