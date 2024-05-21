return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    local keymap = vim.keymap.set
    require('toggleterm').setup {
      float_opts = {
        border = 'rounded',
      },
    }

    local Terminal = require('toggleterm.terminal').Terminal
    local float_term = Terminal:new {
      direction = 'float',
      count = 0,
      -- function to run on opening the terminal
      on_open = function(term)
        vim.cmd 'startinsert!'
        vim.api.nvim_buf_set_keymap(term.bufnr, 'n', 'q', '<cmd>close<CR>', { noremap = true, silent = true })
        vim.api.nvim_buf_set_keymap(term.bufnr, 'n', '<Esc>', '<cmd>close<CR>', { noremap = true, silent = true })
      end,
    }
    local toggle_float_term = function()
      float_term:toggle()
    end
    keymap('n', '<CR><CR>', toggle_float_term)

    keymap('t', '<Esc>', [[<C-\><C-n>]])
    keymap('t', 'jk', [[<C-\><C-n>]])
    keymap('t', '<C-h>', [[<Cmd>wincmd h<CR>]])
    keymap('t', '<C-j>', [[<Cmd>wincmd j<CR>]])
    keymap('t', '<C-k>', [[<Cmd>wincmd k<CR>]])
    keymap('t', '<C-l>', [[<Cmd>wincmd l<CR>]])
  end,
}
