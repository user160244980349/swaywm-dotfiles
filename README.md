# About
This is a minimalistic rice setup with solid and calm adwaita theme.
It includes configs for all dependency packages used for ricing and doing every day work.

# Dependencies
* termite (terminal)
* sway
* swayidle
* swaylock
* libappindicator-gtk3 (tray)
* mako (notifications)
* wofi (launcher)
* waybar (infobar)
* pulseaudio (sound)
* pavucontrol (sound control)
* brightnessctl (backlight control)
* udiskie (automount usb sticks)
* libmtp (go-mtpfs dependency)
* go-mtpfs-git (mtp)
* wl-clipboard (clipboard)
* grim (screenshots)
* imagemagick (picture color grep)
* slurp (region of screen for capture)
* zsh-autosuggestions
* zsh-completions
* zsh-syntax-highlighting

# Theming
* awesome-terminal-fonts
* otf-font-awesome
* ttf-roboto
* ttf-roboto-mono
* qt5ct
* kvantum-qt5
* gnome-themes-extra (adwaita theme & icons)
* oh-my-zsh

# Apps
* zsh
* htop 
* vim
* vifm
* rhythmbox
* qbittorrent
* tlp (power management)

# Wofi bug with term
```
ln -s /usr/bin/termite /usr/bin/xterm
```
# Udiskie mount folder and link
```
ln -s /run/media/user ~/media/drives
```

# To apply theme in GTK3
```
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.wm.preferences theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface icon-theme "Adwaita"
gtk-update-icon-cache $HOME/.icons/Adwaita
```

# TODO
-
