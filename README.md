# Neovim configuration

Lua scripts for my nvim configuration

## Prerequisite

* Git CLI

* C compiler (required by treesitter plugin)

  For windows: https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support

* Ripgrep (https://github.com/BurntSushi/ripgrep#installation)

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
\<leader\> = SPACE

\<C\> = CTRL

### Project
| Key          | Function      | Mode |
| :----------  | :---------    | :--- |
| \<leader\>pf | List files    | n    |
| \<leader\>ps | Grep in files | n    |
| \<leader\>pv | Browse files  | n    |


### Editing
| Key          | Function              | Mode |
| :----------  | :---------            | :--- |
| \<C-n\>      | Toggle line number    | n    |
| \<C-q\>      | Block visual mode     | n    |
| J            | Move lines down       | v    |
| K            | Move lines up         | v    |
| \<C-c\>      | Quit interactive mode | i    |
| \<leader\>p  | Paste and preserve yank buffer | x |
| \<leader\>y  | Yank to system clipboard | n, v |
| \<leader\>u  | Show undo tree | n |

### Marking
| Key          | Function              | Mode |
| :----------  | :---------            | :--- |
| \<leader\>ma | Add file to mark | n |
| \<leader\>nn | Next marked file | n |
| \<leader\>pp | Previous marked file | n |
| \<leader\>mm | Show marked files | n |
| \<leader\>MM | Show marked files in telescope | n |

### Git
| Key          | Function              | Mode |
| :----------  | :---------            | :--- |
| \<leader\>gg | Show git status | n |
| \<C-p\>      | Show files in git | n |

### Preview
| Key          | Function              | Mode |
| :----------  | :---------            | :--- |
| \<leader\>md | Markdown preview in browser | n |

### LSP
| Key          | Function              | Mode |
| :----------  | :---------            | :--- |
| gr | Find all references | n |
| gi | Go to implementation | n |
| gd | Go to definition | n |
