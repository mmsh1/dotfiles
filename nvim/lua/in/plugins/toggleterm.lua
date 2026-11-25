return {
  "akinsho/toggleterm.nvim",
  cmd = { "ToggleTerm" },
  keys = {
    { "<leader>tt", "<cmd>ToggleTerm direction=float<CR>", desc = "Toggle floating terminal" },
  },
  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      else
        return 20
      end
    end,
    open_mapping = [[<C-\>]],
    direction = "float",
    float_opts = {
      border = "curved",
      winblend = 0,
    },
    highlights = {
      NormalFloat = { guibg = "NONE" },
      FloatBorder = { guifg = "NONE" },
    },
    shade_terminals = true,
    persist_size = true,
  },
}
