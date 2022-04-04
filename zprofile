#
#~/.zprofile
#

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi

[ ! -s ~/.config/mpd/mpd.conf ] && mpd

source ~/.bash_profile
