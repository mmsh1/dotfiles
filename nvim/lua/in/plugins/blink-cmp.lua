return {
  'saghen/blink.cmp',

  event = { "LspAttach" },
  version = '1.*',

  opts = {
    keymap = { preset = 'default' },

    appearance = {
      nerd_font_variant = 'mono'
    },

    completion = {
      accept = { auto_brackets = { enabled = true } },
      --documentation = { auto_show = false }
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" }
  },

  opts_extend = { "sources.default" }
}
