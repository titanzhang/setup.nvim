# Neovim configuration

Lua scripts for my nvim configuration

## Prerequisite

* Git CLI

* C compiler (required by treesitter plugin)

  For windows: https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support

## Installation

* Install Neovim (https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-package)

* Find out the {CONFIGPATH} by running the command in nvim

  ```vim
  :echo stdpath('config')
  ```

  or in command line

  ```sh
  nvim --headless -c "echo stdpath('config')"
  ```

* Clone this repo

  ```sh
  git clone git@github.com:titanzhang/setup.nvim.git {CONFIGPATH}
  ```

## keymap

TODO
