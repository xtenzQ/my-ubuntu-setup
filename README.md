# 🛠️ My Ubuntu setup for development

![](https://img.shields.io/badge/Ubuntu-22.04-orange?style=flat-style&logo=ubuntu&logoColor=white) ![](https://img.shields.io/badge/Ubuntu-20.04-green?style=flat-style&logo=ubuntu&logoColor=white)

![](img/main.png)

### Hello everyone! 👋

I want to share with you an Ubuntu setup which I carefully built for myself. As a developer, I want my system not only to has all neccessary tools but to look nice. I hope you to enjoy my build!

Feel free to ask me using **[email](mailto:rusetscky@outlook.com)**.

P.S. I'm still working on this and I haven't added everything that I want atm. Thank you for understanding 🙏

---

**Table of contents:**
- [🛠️ My Ubuntu setup for development](#️-my-ubuntu-setup-for-development)
    - [Hello everyone! 👋](#hello-everyone-)
  - [Theme](#theme)
  - [Tweaks and extensions](#tweaks-and-extensions)
    - [Pre-installation](#pre-installation)
    - [Dock conf](#dock-conf)
  - [Audio device setup](#audio-device-setup)
    - [Set default audio (optional)](#set-default-audio-optional)
  - [Dual Boot Time Sync](#dual-boot-time-sync)
  - [Bluetooth Dual Boot Pairing](#bluetooth-dual-boot-pairing)
  - [Keyboard Shortcuts](#keyboard-shortcuts)
  - [Software](#software)
    - [Virtual Webcam Background](#virtual-webcam-background)
    - [Terminal Tabby](#terminal-tabby)
      - [Install `oh-my-zsh` and `p10k`](#install-oh-my-zsh-and-p10k)
  - [Style other apps](#style-other-apps)
    - [Chrome](#chrome)
    - [Telegram](#telegram)
  - [Development setup](#development-setup)
    - [Spacevim](#spacevim)
  - [Other tools](#other-tools)
    - [Emotes](#emotes)

---

## Theme

I copied almost everything from **[ArcTechnologies](https://www.youtube.com/channel/UCtKKEqJIPCT9E6WMas7lC5Q)** (YouTube). I recommend to check their channel and video of setting up a Nord theme for GNOME Desktop.

<a href="https://www.youtube.com/watch?v=gx1hEQSOAyg"><img width="640px" src="https://i3.ytimg.com/vi/gx1hEQSOAyg/maxresdefault.jpg" /></a>

Wallpaper is taken from **[nordthemewallpapers.com](https://nordthemewallpapers.com)**:

<a href="https://nordthemewallpapers.com/Backgrounds/16-9/All/img/3mcg97oyotu61.jpg"><img width="640px" src="https://nordthemewallpapers.com/Backgrounds/16-9/All/img/3mcg97oyotu61.jpg" /></a>

## Tweaks and extensions

Install GNOME Tweaks:

```bash
sudo apt install gnome-tweaks
```

Install Colloid-dark-nord theme:
```bash
curl -LJO https://github.com/vinceliuice/Colloid-gtk-theme/archive/refs/heads/main.zip && unzip 
Colloid-gtk-theme.zip && cd Colloid-gtk-theme && sh -c install.sh --tweaks nord
```

 * appearance
     * legacy applications: [Colloid-dark-nord](https://github.com/vinceliuice/Colloid-gtk-theme) (`--tweaks nord`)
     * cursor: Yaru
     * icons: [Colloid-icon-theme](https://github.com/vinceliuice/Colloid-icon-theme)
     * shell: [Colloid-dark-nord](https://github.com/vinceliuice/Colloid-gtk-theme) (`--tweaks nord`)
     * sound: Yaru
 * extensions
     * [dynamic panel transparency](https://extensions.gnome.org/extension/1011/dynamic-panel-transparency/)
         * background
             * maximized opacity: 100%
             * unmaximized opacity: 49%
             * hide corners
     * [simple monitor](https://extensions.gnome.org/extension/3891/simple-monitor/)
     * [Unite](https://extensions.gnome.org/extension/1287/unite/)
     * [window is ready notification remover](https://extensions.gnome.org/extension/1007/window-is-ready-notification-remover/)
     * ubuntu dock
     * user themes
 * fonts
     * inteface text: Ubuntu Regular 11
     * document text: Sans Regular 11
     * monospace text: Ubuntu Mono Regular 13
     * legacy window titles: Ubuntu Regular 11
     * hinting: full (you can also try slight)
     * antialiasing: subpixel
     * scaling factor: 1.00
* [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation)
   * [p10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh)

### Pre-installation


### Dock conf
In the file.

To copy settings into your config use:
```Bash
dconf load /org/gnome/shell/extensions/dash-to-dock/ < dash-to-dock.conf
```

## Audio device setup

<img width="720px" src="img/pavu.png" />


I spent lots of time setting up my audio environment on Ubuntu and it's a pure hell for a person who's not familiar with Linux.
1. Download `pavucontrol`:
```
sudo apt update && sudo apt install pavucontrol
```
2. Go to `Configuration` tab and disable all unused micro by clicking `Off` in dropdown menu.
3. Switch all your discrete microphones profiles from `Duplex` into `Input` (microphone is not an output device).
4. Switch all your discrete headphones profiles from `Duplex` into `Output`.

**If you have headset with mic leave `Duplex` as it is.**

### Set default audio (optional)

I use AKG Lyra & default stereo headphones preset (the command below is added into `Startup Applications`):

```
pactl set-default-sink alsa_output.pci-0000_00_1b.0.analog-stereo &&  pactl set-default-source alsa_input.usb-AKG_C44-USB_Microphone_AKG_C44-USB_Microphone-00.analog-stereo
```

To list your input and output devices use `pactl list short sinks` and `pactl list short sources`

## Dual Boot Time Sync

In Linux, use:
```
timedatectl set-local-rtc 1
```

## Bluetooth Dual Boot Pairing

Link:
https://unix.stackexchange.com/questions/255509/bluetooth-pairing-on-dual-boot-of-windows-linux-mint-ubuntu-stop-having-to-p

## Keyboard Shortcuts
- Copy a screenshort of an area to clipboard: `Shift` + `Super` +`S`
- Home folder: `Super` + `E`
- Launch terminal: `Super` + `T`

## Software
### [Virtual Webcam Background](https://github.com/fangfufu/Linux-Fake-Background-Webcam)
To use blur or any other webcam background at work.

### Terminal [Tabby](https://github.com/Eugeny/tabby)

<img width="640px" src="img/tabby.png" />

Amazing terminal!
1. Download latest release **[here](https://github.com/Eugeny/tabby/releases)**.
2. Install `.deb` file.
```bash
sudo dpkg -i tabby-1.0.177-linux-x64.deb
```
3. Make Tabby a default terminal.
Add Tabby to terminals list.
```bash
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/tabby 1
```
Change default terminal by choosing Tabby in the list by running this command:
```bash
sudo update-alternatives --config x-terminal-emulator
```

#### Install `oh-my-zsh` and `p10k`

Install `oh-my-zsh`:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && chsh -s $(which zsh)
```

Install `p10k`:
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Set `zsh` as default shell:
```
chsh -s $(which zsh)
```

## Style other apps
### Chrome
Go to `Settings` -> `Apperance` -> `Theme` and set it to `GTK+`

### Telegram
Go to `Settings` -> `Advanced` -> `System integration` -> `Use system window frame`

## Development setup

Let's start with basic tools like `build-essential`:

```bash
sudo apt install build-essential 
```

### Spacevim

Install SpaceVim:
```bash
curl -sLf https://spacevim.org/install.sh | bash
```

## Other tools

### Emotes

I miss `Ctrl` + `;` emote picker from Windows a lot so I decided to search for an Ubuntu analog and found `emote`! It's great! Let's install it using snap!

```bash
sudo snap install emote
```

It looks like this:

<img height="360px" src="img/emotes.png" />

Don't forget to bind it to `Ctrl` + `;` (`Settings` -> `Keyboard` -> `Keyboard Shortcuts` -> `View and Customize Shortcuts` -> `Custom Shortcuts` ->  Click `+` and add command `emote` to shortcut just like on screenshot below).

<img width="360px" src="img/emote_shortcut.png" />    