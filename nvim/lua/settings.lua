local cmd = vim.cmd
local exec = vim.api.nvim_exec
local g = vim.g
local opt = vim.opt

cmd "filetype indent plugin on"
cmd "syntax enable"
cmd "autocmd Colorscheme * highlight Normal ctermbg=NONE"

g.gruvbox_contrast_dark = 'hard'
g.gruvbox_italic = 1
g.gruvbox_bold = 1
g.gruvbox_underline = 1
g.gruvbox_undercurl = 1

--g.go_metalinter_command = 'golangci-lint' --TODO make separate shortcut for golangci and default linter

g.rainbow_active = 1

opt.tabstop = 4        --number of visual spaces per TAB
opt.softtabstop = 4    --number of spaces in tab when editing
opt.shiftwidth = 4     --number of spaces to use for autoindent
opt.autoindent = true
opt.copyindent = true  --copy indent from the previous line
opt.smartindent = true

opt.hidden = true
opt.number = true      --show line number
opt.showcmd = true     --show command in bottom bar
opt.cursorline = true  --highlight current line
opt.wildmenu = true    --visual autocomplete for command menu
opt.showmatch = true   --highlight matching brace
opt.laststatus = 2     --window will always have a status line

opt.list = true        --display unprintable characters
opt.listchars = {      --unprintable chars mapping
	tab = '• ',
	trail = '•',
	extends = '»',
	precedes = '«'
}

opt.background = 'dark'
opt.termguicolors = true

cmd'colorscheme gruvbox'
--cmd'colorscheme catppuccin'
