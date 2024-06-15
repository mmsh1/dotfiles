vim.cmd("autocmd Colorscheme * highlight Normal ctermbg=NONE guibg=NONE")
vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- line numbers
opt.relativenumber = true  -- show relative line numbers
opt.number = true          -- show absolute line number on cursor line (when relative number is on)

-- tabs and indentation
opt.tabstop = 4        -- number of visual spaces per TAB
opt.softtabstop = 4    -- number of spaces in tab when editing
opt.shiftwidth = 4     -- 4 spaces for indent width
opt.autoindent = true  -- copy indent from current line when starting new one
opt.copyindent = true  -- copy indent from the previous line
opt.smartindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true  -- if you include mixed case in you search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true

-- appearance
opt.background = 'dark'
opt.termguicolors = true
opt.signcolumn = 'yes'   -- show sign column so that text doesn't shift

local g = vim.g
g.gruvbox_contrast_dark = 'hard'
g.gruvbox_italic = 1
g.gruvbox_bold = 1
g.gruvbox_underline = 1
g.gruvbox_undercurl = 1

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- swap
opt.swapfile = false -- turn off swapfile

-- unprintable characters
opt.list = true        --display unprintable characters
opt.listchars = {      --unprintable chars mapping
        tab = '• ',
        trail = '•',
        extends = '»',
        precedes = '«'
}
