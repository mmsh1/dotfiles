return {
  "nvim-lualine/lualine.nvim",
  dependencies = { 'kyazdani42/nvim-web-devicons', opt = true },
  config = function()
    local lualine = require("lualine")
    --local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        disabled_filetypes = {'NvimTree'}
        --theme = "gruvbox",
      },
      sections = {
        lualine_b = {},
        lualine_x = {
          --{
          --  lazy_status.updates,
          --  cond = lazy_status.has_updates,
          --  color = { fg = "#ff9e64" },
          --},
          --{ "encoding" },
          --{ "fileformat" },
          --{ "filetype" },
        },
      },
    })
  end,
}
