vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- adiciona o packer
  use 'wbthomason/packer.nvim'

  -- adicionar pacotes abaixo
  use 'terroo/vim-simple-emoji'
  use 'navarasu/onedark.nvim'
  use 'dracula/vim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'kyazdani42/nvim-web-devicons'
  use 'tamton-aquib/staline.nvim'
end)


