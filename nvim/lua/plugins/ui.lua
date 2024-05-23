return {
  --[[colorscheme]]
  { 'olimorris/onedarkpro.nvim' },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    init = function()
      require('catppuccin').setup {
        transparent_background = true,
      }

      vim.cmd.colorscheme 'catppuccin'
    end,
  },
  -- { 'rebelot/kanagawa.nvim', },
  -- { 'folke/tokyonight.nvim', },

  { 'rcarriga/nvim-notify' },
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
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        sections = {
          lualine_x = { 'encoding' },
        },
      }
    end,
  },
}
