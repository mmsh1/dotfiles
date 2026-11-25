return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        --"asm_lsp",
        "bashls",
        "clangd",
        "gopls",
        "lua_ls",
        "neocmake",
        "mesonlsp",
        "ols",
        "pyright",
        "rust_analyzer",
        "zls",
      },
    })
  end
}
