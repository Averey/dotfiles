-- Here is a more advanced example where we pass configuration
-- options to `gitsigns.nvim`. This is equivalent to the following Lua:
--    require('gitsigns').setup({ ... })
--
-- See `:help gitsigns` to understand what the configuration keys do
return { -- Adds git related signs to the gutter, as well as utilities for managing changes
  'lewis6991/gitsigns.nvim',
  -- opts = {
  --   signs = {
  --     add = { text = '+' },
  --     change = { text = '~' },
  --     delete = { text = '_' },
  --     topdelete = { text = '‾' },
  --     changedelete = { text = '~' },
  --   },
  -- },
  config = function()
    require('gitsigns').setup {
      -- signs = {
      --   -- add = { text = '┃' },
      --   -- change = { text = '┃' },
      --   -- delete = { text = '_' },
      --   -- topdelete = { text = '‾' },
      --   -- changedelete = { text = '~' },
      --   -- untracked = { text = '┆' },
      -- },
      current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
        delay = 200,
        ignore_whitespace = false,
        virt_text_priority = 100,
      },
      on_attach = function (bufnr)
        local gitsigns = require('gitsigns')
        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end


        map('n', '<leader>tb', gitsigns.toggle_current_line_blame)
        map('n', '<leader>gb', gitsigns.blame_line)
        map('n', '<leader>gB', function() gitsigns.blame_line{full=true} end)
        map('n', '<leader>gd', gitsigns.diffthis)
        map('n', '<leader>gD', function() gitsigns.diffthis('~') end)
      end
    }
  end,
}
