vim.cmd [[packadd packer.nvim]]
--'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'jeffkreeftmeijer/vim-numbertoggle'
	use 'ellisonleao/gruvbox.nvim'
	use 'sheerun/vim-polyglot'
	use 'preservim/tagbar'
	use 'dense-analysis/ale'
	use 'luochen1990/rainbow'
	use 'fatih/vim-go'
	use 'ms-jpq/chadtree'
	--use 'neovim/nvim-lspconfig'

	use 'morhetz/gruvbox'
	use { 'catppuccin/nvim', as = 'catppuccin' }
	--use 'vim-airline/vim-airline'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require('lualine').setup() {
				options = { theme = 'gruvbox' },
				--sections = {}
			}
	end,}
end)
