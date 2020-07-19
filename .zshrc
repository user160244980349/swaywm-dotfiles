# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/user/.zshrc'

# Load completion plugin
autoload -U compinit
compinit

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_}'$'\n''zsh# '

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
