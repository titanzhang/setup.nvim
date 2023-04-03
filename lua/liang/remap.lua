vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-n>", function()
	vim.o.number = not vim.o.number
end)

-- Remap <C-v> (enter block visual mode) to <C-q>
-- because it's conflict with Windows shotcut
vim.keymap.set('n', '<C-q>', '<C-v>')

-- Move selected lines in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv") -- move down
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv") -- move up

-- Make CTRL-c work when inserting in multiple lines
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Keep cursor in the middle when page up/down
vim.keymap.set('n', '<C-d>', '<C-d>zz') -- page down
vim.keymap.set('n', '<C-u>', '<C-u>zz') -- page up

-- Keep cursor in the middle when searching
vim.keymap.set('n', 'n', 'nzzzv') -- next match
vim.keymap.set('n', 'N', 'Nzzzv') -- prev match

-- Preserve yank buffer in visual mode
-- when replacing a block of text.
-- keep pressing "p" to paste more copies
vim.keymap.set('x', '<leader>p', '"_dP')

-- Yank to system clipboard
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')

