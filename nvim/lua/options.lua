--[[
-- Most useful neovim options
-- https://www.reddit.com/r/neovim/comments/1cytkbq/most_useful_neovim_options/?%24deep_link=true&correlation_id=f3e2733c-068e-4167-9118-67ce4e4bdb81&post_fullname=t3_1cytkbq&post_index=0&ref=email_digest&ref_campaign=email_digest&ref_source=email&utm_content=post_title&%243p=e_as&_branch_match_id=1322567020565710816&utm_medium=Email%20Amazon%20SES&_branch_referrer=H4sIAAAAAAAAA22P3U7EIBCFnwbv2m5LbVeTjTExvgahMO2S5U8YrL69g1WvTCA5fGfOzHBFjPmx6xJobbCVMbbW%2BFvH4xMbRh4vIGS%2BIxmS2YyXVpRkL9eaYvyZDa909n1vf%2FIqOAKJrofwbuqDkAOPmWSvPvG2vJFyIaMoGdZixVEpQkQTfC1jnLreD6MGiKJuw%2FgLpgJsmFRICayslcJo4iuHYeZcNafpDM3YT3Pz0PfnZpoVjDAuejn3lIt1Hg2zXjqo7bj4W%2BYwjdfwQc6JQIKVFDhprNBmg4wHFEq6KM3m%2F3dzKEnBr0ewoBMqeKTvE%2F0egwYtfAHFJwswdQEAAA%3D%3D
--]]

-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

vim.opt.title = true
vim.opt.wrap = false

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
-- vim.opt.scrolloff = 10
