# Dotfiles

Currently this only contains my Vim config, but I will likely update it in the future to include more.

## Files

What is each file?

- .vimrc
  - this file is an outdated version of my vim config. It works if a very minimal vim config is needed
- init.vim
  - this file is for a neovim config. It basically just automatically pulls from `.vimrc`
- my_configs.vim
  - this is my main vim config, and the most up to date
  - it is a customization of [The Ultimate Vimrc](https://github.com/amix/vimrc.git)
  - note that nodejs is required for coc to run

## Setting up my_configs.vim

### Install Scripts

Start by running the following scripts:

```sh
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime # download the ultimate vimrc
sh ~/.vim_runtime/install_awesome_vimrc.sh # install the ultimate vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim # download vim plug
curl -fLo ~/.vim_runtime/my_configs.vim --create-dirs https://raw.githubusercontent.com/jere-mie/dotfiles/main/my_configs.vim # download my custom vimrc
```

### Installing Plugins

After installing, you'll need to open vim and run `:PlugInstall`.  
After that, you'll need to open vim one more time, and coc should install all the necessary language servers. **Note*: you may need to open vim up 2-3 times for coc to stop installing things.  
If you're going to be writing C and C++ files, run `:CocCommand clangd.install`

### Installing Node

If node isn't installed on your PC, I recommend checking out nvm. Node is required to use coc, which provides VSCode-like autocompletion to vim.

#### Installing nvm on Linux

Run the following command:

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

Then install and use the version of node you want

```sh
nvm install latest
nvm use latest
```

#### Installing nvm on Windows

Follow [these directions](https://github.com/coreybutler/nvm-windows#installation--upgrades)

## Updating my_configs.vim

Simply replace the old my_configs.vim with the newest one on GitHub:

```sh
curl -fLo ~/.vim_runtime/my_configs.vim --create-dirs https://raw.githubusercontent.com/jere-mie/dotfiles/main/my_configs.vim # download my custom vimrc
```

**Note**: You may need to re-run `:PlugInstall` and also re-open vim a couple of times to allow coc to download all of the language servers