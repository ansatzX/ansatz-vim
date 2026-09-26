# ansatz-vim

Personal Vim configuration.

Author: ansatz ansatzme@outlook.com

## Install

1. Clone this repository:

   ```sh
   git clone https://github.com/ansatzX/ansatz-vim.git "$HOME/soft/ansatz-vim"
   ```

2. Install `vim-plug` if it is not already installed:

   ```sh
   curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```

   `init.vim` also tries this bootstrap automatically when `curl` is available.

3. Load this config from `~/.vimrc`:

   ```vim
   source ~/soft/ansatz-vim/init.vim
   ```

   A symlink also works:

   ```sh
   ln -s "$HOME/soft/ansatz-vim/init.vim" "$HOME/.vimrc"
   ```

4. Install plugins:

   ```sh
   vim +PlugInstall +qall
   ```

## Optional tools

- `node`: required by `coc.nvim`.
- CoC language servers: install explicitly with `:CocInstall ...`.
- `fprettify`: used for Fortran formatting.
- `vim-clap`: for best performance, run `:Clap install-binary!` after plugin install.

## Notes

- Wolfram `.wl` and `.wls` files are configured to use `wl` syntax.
- `.m` is not forced to Wolfram syntax because it often means MATLAB.
