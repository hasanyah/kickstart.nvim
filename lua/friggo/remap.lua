-- move line down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
-- move line up
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- pg down
vim.keymap.set({ 'n', 'v' }, '<C-j>', '<C-d>zz')
-- pg up
vim.keymap.set({ 'n', 'v' }, '<C-k>', '<C-u>zz')
-- next occurence - while centering
vim.keymap.set('n', 'n', 'nzzzv')
-- prev occurence - while centering
vim.keymap.set('n', 'N', 'Nzzzv')

-- paste over but do not append the removed section to the buffer
vim.keymap.set('x', '<leader>p', '"_dP')

-- copy/paste to/from the clipboard
vim.keymap.set({ 'v', 'n' }, '<leader>P', '"+p')
vim.keymap.set({ 'v', 'n' }, '<leader>y', '"+y')
vim.keymap.set({ 'v', 'n' }, '<leader>Y', '"+Y')

-- indenting
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('n', '*', "*''")
