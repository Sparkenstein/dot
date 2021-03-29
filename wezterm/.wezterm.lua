local wezterm = require 'wezterm';


local mykeys = {}
for i = 1, 9 do
    table.insert(mykeys, {
        key=tostring(i),
	mods="CTRL|SHIFT",
	action=wezterm.action{ActivateTab=i-1},
    })

    table.insert(mykeys, {
	key="F" .. tostring(i),
	action=wezterm.action{ActivateTab=i-1},
    })

end

table.insert(mykeys, { key="[", mods="CTRL", action=wezterm.action{ActivateTabRelative=-1}})
table.insert(mykeys, { key="]", mods="CTRL", action=wezterm.action{ActivateTabRelative=1}})

return {
  -- Fonts
  font = wezterm.font("FantasqueSansMono Nerd Font"),
  font_size = 15.0,

  -- UI
  color_scheme = "Andromeda",

  -- Keybindings
  keys = mykeys
}

