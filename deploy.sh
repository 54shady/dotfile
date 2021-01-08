#!/usr/bin/env sh

programs=(
"i3"
"mpd"
"ncmpcpp"
"ranger"
"rofi"
"terminator"
"dunst"
"zathura"
"mpv"
"qutebrowser"
".toprc"
".bashrc"
".gitconfig"
".tmux.conf"
".xprofile"
".bash_profile"
".xinitrc"
".xsession"
".url_handler"
".extract_urlview"
".Xresources"
)

for d in ${programs[@]}
do
	DEFAULT_DIR="$HOME/.config/$d"
	# default direcotry already exist, remove it first.
	if [ -d $DEFAULT_DIR ]; then
		rm -rvf $DEFAULT_DIR
		# link to the real config dir
		ln -s $PWD/$d $HOME/.config/$d
	# link the ~/.target to ~/.dotfile/dot_target
	elif [ -f ~/$d ]; then
		rm -rvf ~/$d
		ln -s $PWD/dot_${d##.} ~/$d
	fi
done
