return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local todo = require("todo-comments")
    local keymap = vim.keymap

    keymap.set("n", "]t", todo.jump_next, { desc = "Next todo comment" })
    keymap.set("n", "[t", todo.jump_prev, { desc = "Previous todo comment" })

    todo.setup()
  end,
}
