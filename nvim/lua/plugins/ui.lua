return {
  { 'rcarriga/nvim-notify' },
  -- Highlight todo, notes, etc in comments
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup {
        'css',
        'javascript',
        html = {
          mode = 'foreground',
        },
      }
    end,
  },
  -- { 'akinsho/bufferline.nvim', version = '*', dependencies = 'nvim-tree/nvim-web-devicons', opts = {} },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        -- default setions
        -- sections = {
        --   lualine_a = {'mode'},
        --   lualine_b = {'branch', 'diff', 'diagnostics'},
        --   lualine_c = {'filename'},
        --   lualine_x = {'encoding', 'fileformat', 'filetype'},
        --   lualine_y = {'progress'},
        --   lualine_z = {'location'}
        -- },
        sections = {
          lualine_x = { 'encoding' },
        },
      }
    end,
  },
}
