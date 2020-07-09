#!/bin/bash

if [ ! -d "config" ]; then
	mkdir .config
fi

cd .config

cp -r $HOME/.config/alacritty .
cp -r $HOME/.config/gtk-3.0   .
cp -r $HOME/.config/ranger    .
cp -r $HOME/.config/sway      .
cp -r $HOME/.config/waybar    .
cp -r $HOME/.config/wofi      .

cd ..

cp -r $HOME/.icons            .
cp -r $HOME/.themes           .

cp    $HOME/.Xresources       .
cp    $HOME/.gitconfig        .
cp    $HOME/.zshrc            .
cp    $HOME/.pam_environment  .
cp    $HOME/.gtkrc-2.0        .

