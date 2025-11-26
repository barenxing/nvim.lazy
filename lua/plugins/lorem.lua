-- derektata/lorem
-- easily generate dummy text in Neovim
--
-- if true then return {} end
--
return {
  {
    "derektata/lorem.nvim",
    config = function()
      require("lorem")
    end,
  },
}
