# profile
# OS   : NetBSD
# shell: bash

PREFIX=/usr/pkg

PATH=$PATH:/sbin:/usr/sbin:${PREFIX}/sbin:/usr/X11R7/bin:$HOME/bin
EDITOR=vim
VISUAL=$EDITOR
CVSEDITOR=$EDITOR
PKGEDITOR=$EDITOR
PAGER=less
ENV=$HOME/.shrc

export PATH EDITOR VISUAL CVSEDITOR PKGEDITOR PAGER ENV

PS1="(\u@\[\e[1;31m\]\h\[\e[0m\]):[\w]\n$ "

# allow ^Q for screen / tmux
stty -ixon

alias ls='ls -F'

# we want accents to display nicely
LANG=C; export LANG
LC_CTYPE=fr_FR.ISO8859-15; export LC_CTYPE

if [ -r ${PREFIX}/share/bash-completion/bash_completion ]; then
	. ${PREFIX}/share/bash-completion/bash_completion
else
	echo "/!\ bash_completion is missing."
fi

# load specific profile defs
[ -f "${HOME}/.local_profile" ] && . ${HOME}/.local_profile

# helper functions

sslconnect()
{
	openssl s_client -connect $1:$2 -crlf
}

ssh_copy_id()
{
	[ -f ~/.ssh/id_rsa.pub ] && PK=id_rsa || PK=id_dsa

	cat ~/.ssh/${PK}.pub |	\
		ssh $1 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
}

os2unix()
{
	mv -f $1 $1.dos
	tr -d '\r' < $1.dos > $1
}

isomount()
{
	[ -z "$1" ] || [ -z "$2" ] && echo "usage: isomount <iso> <dir>" && return
	sudo vnconfig -v -c /dev/vnd0d "$1"
	sudo mount -t cd9660 /dev/vnd0a "$2"
}

isoumount()
{
    [ -z $1 ] && echo "usage: isoumount <dir>" && return
	sudo umount "$1"
	sudo vnconfig -u vnd0d
}

