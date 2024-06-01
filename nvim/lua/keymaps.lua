-- [[ Basic Keymaps ]]
--  See `:help keymap()`

local keymap = vim.keymap.set

keymap('v', '<', '<gv')
keymap('v', '>', '>gv')
keymap({ 'n', 'i' }, '<C-s>', '<ESC>:wa<CR>')

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
keymap('n', '<Esc>', '<cmd>nohlsearch<CR>')

keymap({ 'n', 'i' }, '<C-,>', '<ESC><cmd>vsp $MYVIMRC<CR><Esc>')

keymap('n', 'Y', 'y$', { silent = true }) -- Make Y act like C and D
keymap('v', '<leader>y', '"+y', { silent = true }) -- yank current select to system clipboard
keymap('n', '<leader>y', 'V"+y', { silent = true }) -- yank current line to system clipboard
keymap('n', '<leader>p', '"+p', { silent = true }) -- paste system slipboard content

-- Keybinds to make split navigation easier.
keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
keymap('n', '<leader>\\', '<cmd>vs<CR>')
keymap('n', '<leader>-', '<cmd>sp<CR>')

keymap('n', '<leader>q', '<cmd>q<CR>')
keymap('n', '<leader>w', '<cmd>w<CR>')
keymap('n', '-', '<C-^>')
keymap('n', '<Tab>', '<C-^>')
keymap('n', '<leader>;', 'mqA;<Esc>`q')
keymap('n', '<leader>,', 'mqA,<Esc>`q')

-- Diagnostic keymaps
keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
keymap('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
-- keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
-- keymap('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- keymap('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- keymap('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- keymap('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- keymap('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
