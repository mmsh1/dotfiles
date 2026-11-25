return {
  "nvim-lualine/lualine.nvim",
  dependencies = { 'kyazdani42/nvim-web-devicons', opt = true },
  config = function()
    local lualine = require("lualine")

    lualine.setup({
      options = {
        disabled_filetypes = {'NvimTree'},
        theme = "gruvbox",
        section_separators = '',   -- No arrows (Industrial look)
        component_separators = '', -- Pipes (Industrial look)
        globalstatus = false,      -- Set to true if you want one bar for all splits
      },
      sections = {
        lualine_b = {},
        lualine_x = {},
      },
    })
  end,
}
