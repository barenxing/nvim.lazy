return {
  "derektata/lorem.nvim",
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require("lorem").opts({
      sentenceLength = "medium",
      comma_chance = 0.2,
      max_commas_per_sentence = 2,
    })
  end,
  keys = {
    { "<leader>lor", "<cmd>LoremIpsum paragraphs 2<CR>", desc = "Generate LoremIpsum" },
  },
}
