-- PACKER
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'terroo/vim-simple-emoji'
  use 'navarasu/onedark.nvim'
  -- TELESCOPE
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- WEBICONS
  use 'kyazdani42/nvim-web-devicons'
  -- STATUS BAR
  use 'tamton-aquib/staline.nvim'

end)


