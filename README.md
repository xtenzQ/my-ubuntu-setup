# My Ubuntu setup

![](img/screenshot.png)

## Setup
* [wallpaper](https://wallpaperaccess.com/full/1678137.jpg)
* tweaks
    * appearance
        * applications: [Orchis-dark-compact](https://github.com/vinceliuice/Orchis-theme) (`--tweaks compact`)
        * cursor: Yaru
        * icons: [Papirus-Dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
        * shell: Orchis-dark-compact
        * sound: Yaru
    * extensions
        * [dynamic panel transparency](https://extensions.gnome.org/extension/1011/dynamic-panel-transparency/)
            * background
                * maximized opacity: 100%
                * unmaximized opacity: 49%
                * hide corners
        * [simple monitor](https://extensions.gnome.org/extension/3891/simple-monitor/)
        * ubuntu dock
        * user themes
    * fonts
        * inteface text: Ubuntu Regular 11
        * hinting: none
        * antialiasing: subpixel
        * scaling factor: 1.00

## Dock conf
In the file.

To copy settings into your config use:
```Bash
dconf load /org/gnome/shell/extensions/dash-to-dock/ < dash-to-dock.conf
```
