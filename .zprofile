emulate sh -c 'source /home/alex/.bash_profile'

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VNTR -eq 1 ]]; then
	exec startx
fi

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

neofetch
