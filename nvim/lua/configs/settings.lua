-- adiciona o tema 
vim.cmd([[ syntax enable ]])
-- vim.cmd([[ colorscheme dracula ]])
-- https://github.com/navarasu/onedark.nvim
vim.cmd([[ set bg=dark ]])
vim.cmd([[ set termguicolors ]])
vim.cmd([[ colorscheme onedark ]])

require('onedark').setup {
    style = 'deep'
}
require('onedark').load()

-- remove o erro de underscore
vim.cmd([[ autocmd BufRead *.md syn match markdownError "\w\@<=\w\@=" ]])

-- configurações de terminal
vim.cmd([[ set guicursor= ]])
vim.cmd([[ set encoding=utf8 ]])
vim.cmd([[ set nu! ]])
vim.cmd([[ set mouse=a ]])
vim.cmd([[ set wildmenu ]])
vim.cmd([[ set confirm ]])
vim.cmd([[ set incsearch ]])
vim.cmd([[ set title ]])
vim.cmd([[ set t_Co=256 ]])
vim.cmd([[ set shiftwidth=2 ]])
vim.cmd([[ set softtabstop=2 ]])
vim.cmd([[ set expandtab ]])
vim.cmd([[ set shiftwidth=2 ]])
vim.cmd([[ set softtabstop=2 ]])
vim.cmd([[ set expandtab ]])
vim.cmd([[ set guicursor= ]])
vim.cmd([[ set cursorline ]])
vim.cmd([[ syntax on ]])

-- roda o PackerCompile sempre
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

--
vim.cmd([[ let extension = expand('%:e') ]])
