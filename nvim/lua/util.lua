local Util = {}

-- https://www.reddit.com/r/neovim/comments/1335pfc/is_there_any_generic_simple_way_to_close_floating/
function Util.close_floating()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    if vim.api.nvim_win_get_config(win).relative == "win" then
      vim.api.nvim_win_close(win, false)
    end
  end
end

return Util
