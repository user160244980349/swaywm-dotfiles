# Dependencies
termite (terminal)
sway
swayidle
swaylock
libappindicator-gtk3 (tray)
mako (notifications)
wofi (launcher)
waybar (infobar)
pulseaudio (sound)
pavucontrol (sound control)
brightnessctl (backlight control)
udiskie (automount usb sticks)
libmtp
go-mtpfs-git (mtp)


# Theming
awesome-terminal-fonts
otf-font-awesome
ttf-roboto
ttf-roboto-mono
qt5ct
kvantum-qt5

# Apps
zsh
htop 
vim
vifm
rhythmbox
qbittorrent

# Wofi bug with term
ln -s /usr/bin/termite /usr/bin/xterm

# Udiskie mount folder and link
ln -s /run/media/user ~/media/drives

# To apply theme in GTK3
gtk-update-icon-cache $HOME/.icons/Adwaita
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.wm.preferences theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface icon-theme "Adwaita"

# TODO
7.  Configure zsh
11. Mimeapps configuration

# Troubles
2. Color schemes not similar between console and gui
