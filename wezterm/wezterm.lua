local wezterm = require('wezterm')
local act = wezterm.action
local config = wezterm.config_builder()

-- use powershell on windows
if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  config.default_prog = { 'powershell.exe', '-NoExit', '-NoLogo', '-Command', 'cd d:\\code' }
end

config.font_size = 12
config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font_with_fallback({
  'FiraCode Nerd Font',
  'FantasqueSansM Nerd Font',
})

config.window_decorations = 'RESIZE'
config.enable_scroll_bar = false
config.use_fancy_tab_bar = false
config.tab_max_width = 32
-- config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.leader = { key = ' ', mods = 'CTRL', timeout_milliseconds = 1000}
config.keys = {
  {
    key = '\\',
    mods = 'LEADER',
    action = act.SplitHorizontal { domain = 'CurrentPaneDomain'} 
  },
  {
    key = '-',
    mods = 'LEADER',
    action = act.SplitVertical { domain = 'CurrentPaneDomain' } 
  },
  {
    key = 'q',
    mods = 'LEADER',
    action = act.CloseCurrentPane { confirm = false },
  },
  -- use ctrl|shift + t or leader + c to create a new tab
  {
    key = 'c',
    mods = 'LEADER',
    action = act.SpawnTab 'CurrentPaneDomain', 
  },
  {
    key = 'e',
    mods = 'LEADER',
    action = act.PromptInputLine {
      description = 'Enter new name for tab',
      action = wezterm.action_callback(function(window, pane, line)
        -- line will be `nil` if they hit escape without entering anything
        -- An empty string if they just hit enter
        -- Or the actual line of text they wrote
        if line then
          window:active_tab():set_title(line)
        end
      end),
    }
  },
}

-- use ctrl + number to activate that tab
for i = 1, 9 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'CTRL',
    action = act.ActivateTab(i - 1),
  })
end

return config

