## Wayfire config notes (Blu)

### Useful links

https://github.com/D3Ext/aesthetic-wallpapers
https://github.com/archcraft-os/archcraft-berry

### Migration (Berry -> Wayfire)

General:

- Rename rofi paths -> `$HOME/.config/wayfire/scripts/rofi* (and network_menu)`
- Modify rofi themes -> `$HOME/.config/wayfire/theme/rofi/*.rasi`
- Remove unnecesary rofi menus
- Reset GTK-3 dconfs
- Check qt5ct and qt6ct
- Refactoring: all rofi scripts
- Add grim compatibility to rofi_screenshot (remove grim_screenshot)
- Check alternative to betterlockscreen (swaylock?)
- Check alternative to xdotool/wmctl for XWayland

### Fix alacritty cursor theme

Create file: `$HOME/.icons/default/index.theme`
```
[icon theme]
Inherits=Adwaita
```

### Fix discord screenshare

Packages: `xdg-desktop-portal` `xdg-desktop-portal-wlr`

Autostart:
```
/usr/lib/xdg-desktop-portal -r &
/usr/lib/xdg-desktop-portal-wlr &
```
