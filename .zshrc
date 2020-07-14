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

alias mtp-m='go-mtpfs /run/media/user/mtp &> $HOME/.mtplog &; disown'
alias mtp-u='fusermount -u /run/media/user/mtp'

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec sway &> $HOME/.swaylog
fi
