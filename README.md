# Dotfiles

**Just want my vim config?** Run this:

```bash
curl -o- https://raw.githubusercontent.com/jere-mie/dotfiles/main/scripts/install-vimrc.sh | bash
```

## Minimal Vimrc

A more minimal vim config without plugins can be installed by running:

```bash
curl -fLo ~/.vimrc https://raw.githubusercontent.com/jere-mie/dotfiles/main/minimal.vim
```

## Setting up Vimrc

### Install Scripts

```bash
# Install Vim-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Download my vim config
curl -fLo ~/.vimrc https://raw.githubusercontent.com/jere-mie/dotfiles/main/.vimrc
```

Or run this to do the above in one step:

```bash
curl -o- https://raw.githubusercontent.com/jere-mie/dotfiles/main/scripts/install-vimrc.sh | bash
```

### Installing Plugins

After installing, you'll need to open vim and run `:PlugInstall`.  
After that, you'll need to open vim one more time, and coc should install all the necessary language servers. **Note*: you may need to open vim up 2-3 times for coc to stop installing things, it's weird sometimes.  
If you're going to be writing C and C++ files, run `:CocCommand clangd.install`

### Installing Node

If node isn't installed on your PC, I recommend checking out nvm. Node is required to use coc, which provides VSCode-like autocompletion to vim.

#### Installing nvm on Linux

Run the following command:

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

Then install and use the version of node you want

```bash
nvm install stable
nvm use stable
```

#### Installing nvm on Windows

Follow [these directions](https://github.com/coreybutler/nvm-windows#installation--upgrades)

## Updating the .vimrc

Simply replace the old .vimrc with the newest one on GitHub:

```bash
curl -fLo ~/.vimrc https://raw.githubusercontent.com/jere-mie/dotfiles/main/.vimrc
```

**Note**: You may need to re-run `:PlugInstall` and also re-open vim a couple of times to allow coc to download all of the language servers