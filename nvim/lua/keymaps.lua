local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

map('n', '<silent> <C-l>', ':nohl<CR><C-l>', default_opts) -- redraw the screen and remove any search highlighting
map('', '<S-Y>', '"+y', {})
-- nnoremap <leader>b :GoDebugBreakpoint<CR>
-- nnoremap <leader>n :GoDebugContinue<CR>

