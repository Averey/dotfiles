return {
  --[[colorscheme]]
  -- { 'rebelot/kanagawa.nvim', },
  -- {'Averey/Zandromedai_nvim'},
  { dir = '/Users/zhoujinlin/code/neovim/Zandromedai_nvim'},
  { 
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    init = function ()
      vim.cmd.colorscheme 'tokyonight'
      -- vim.cmd.colorscheme 'andromedia'
    end,
    config = function ()
      require('tokyonight').setup({
        style = "night",
        styles = {
          comments = { italic = true },
          functions = { italic = true },
          keywords = { italic = false },
          floats = "normal"
        },
        hide_inactive_statusline = true,
      })
    end
  },
  -- {
  --   'catppuccin/nvim',
  --   name = 'catppuccin',
  --   priority = 1000,
  --   init = function()
  --     -- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
  --     vim.cmd.colorscheme 'catppuccin'
  --   end,
  --   config = function ()
  --     require("catppuccin").setup({
  --       -- transparent_background = true,
  --       styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
  --         comments = { "italic" }, -- Change the style of comments
  --         conditionals = { "italic" },
  --         loops = {},
  --         functions = { "italic" },
  --         keywords = {},
  --         strings = {},
  --         variables = {},
  --         numbers = {},
  --         booleans = {},
  --         properties = {},
  --         types = {},
  --         operators = {},
  --         -- miscs = {}, -- Uncomment to turn off hard-coded styles
  --       },
  --     })
  --   end
  -- },

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
