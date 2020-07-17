# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/user/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias mtpm='go-mtpfs /run/media/user/mtp &> $HOME/.mtplog &; disown'
alias mtpu='fusermount -u /run/media/user/mtp'
alias wistat='nmcli device status'
alias wion='nmcli radio wifi on'
alias wioff='nmcli radio wifi off'
alias wiref='nmcli device reapply wlp3s0'
alias wicon='nmcli device connect wlp3s0'
alias widis='nmcli device disconnect wlp3s0'
alias winew='nmcli device wifi connect'
alias h="cd ~"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec sway &> $HOME/.swaylog
fi
