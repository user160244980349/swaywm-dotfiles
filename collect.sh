#!/bin/bash

if [ ! -d "config" ]; then
	mkdir .config
fi

cd .config

cp -r $HOME/.config/termite .
cp -r $HOME/.config/gtk-3.0 .
cp -r $HOME/.config/sway    .
cp -r $HOME/.config/waybar  .
cp -r $HOME/.config/wofi    .
cp -r $HOME/.config/mako    .
cp -r $HOME/.config/vifm    .

cd ..

cp    $HOME/.Xresources      .
cp    $HOME/.gitconfig       .
cp    $HOME/.zshrc           .
cp    $HOME/.pam_environment .
cp    $HOME/.gtkrc-2.0       .
