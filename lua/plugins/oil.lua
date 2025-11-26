-- stevearc/oil.nvim
-- file explorer that lets you edit your filesystem like a normal Neovim buffer
--
-- if true then return {} end
--
return {
  "stevearc/oil.nvim",

  opts = {
    columns = {
      "icon",
      "mtime",
      "size",
      -- "permissions",
    },
  },

  vim.keymap.set("n", "<leader>-", "<cmd>Oil --float<CR>"),

  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons

  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
