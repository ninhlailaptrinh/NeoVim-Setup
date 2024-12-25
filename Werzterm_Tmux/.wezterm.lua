-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
local act = wezterm.action
-- This is where you actually apply your config choices
--config.default_prog = {
--  'pwsh.exe',
--  '-NoLogo'
--}
config.default_prog = { 'wsl.exe', '-d', 'Arch' }

-- my coolnight colorscheme
config.colors = {
  foreground = "#CBE0F0",
  background = "#011423",
  cursor_bg = "#47FF9C",
  cursor_border = "#47FF9C",
  cursor_fg = "#011423",
  selection_bg = "#033259",
  selection_fg = "#CBE0F0",
  ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
  brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
config.font_size = 20

config.enable_tab_bar = true 

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.85

-- Cấu hình phím tắt
config.keys = {
  -- Mở tab mới
  {
    key = 't',
    mods = 'CTRL',
    action = act.SpawnTab 'DefaultDomain',
  },

  {
    key = 'Enter',
    mods = 'ALT',
    action = act.ToggleFullScreen,
  },

  -- Đóng tab hiện tại
  {
    key = 'w',
    mods = 'CTRL',
    action = act.CloseCurrentTab { confirm = true },
  },

  -- Di chuyển giữa các tab
  {
    key = 'Tab',
    mods = 'CTRL',
    action = act.ActivateTabRelative(1),
  },
  {
    key = 'Tab',
    mods = 'CTRL|SHIFT',
    action = act.ActivateTabRelative(-1),
  },

  -- Chia màn hình ngang
  {
    key = '-',
    mods = 'ALT',
    action = act.SplitVertical { domain = 'CurrentPaneDomain' },
  },

  -- Chia màn hình dọc
  {
    key = '\\',
    mods = 'ALT',
    action = act.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },

  -- Di chuyển giữa các panel
  {
    key = 'h',
    mods = 'ALT',
    action = act.ActivatePaneDirection 'Left',
  },
  {
    key = 'l',
    mods = 'ALT',
    action = act.ActivatePaneDirection 'Right',
  },
  {
    key = 'k',
    mods = 'ALT',
    action = act.ActivatePaneDirection 'Up',
  },
  {
    key = 'j',
    mods = 'ALT',
    action = act.ActivatePaneDirection 'Down',
  },

  -- Điều chỉnh kích thước font
  {
    key = '=',
    mods = 'CTRL',
    action = act.IncreaseFontSize,
  },
  {
    key = '-',
    mods = 'CTRL',
    action = act.DecreaseFontSize,
  },
}

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

-- and finally, return the configuration to wezterm
return config
