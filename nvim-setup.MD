First, intall NeoVim:

```sh
brew install neovim #macOS
sudo pacman -S neovim #ArchLinux
```

Now install packer
```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
And inside the VIM prompter, install dependencies with :PackerInstall

Now install luarocks
```sh
brew install luarocks #macOS
```
