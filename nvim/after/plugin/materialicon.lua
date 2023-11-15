require'nvim-material-icon'.setup {
  override = {
    zsh = {
      icon = "",
      color = "#428850",
      cterm_color = "65",
      name = "Zsh"
    }
  };
  color_icons = true;
  default = true;
}

require'nvim-material-icon'.get_icons()
