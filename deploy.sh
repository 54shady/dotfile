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
".toprc"
)

for d in ${programs[@]}
do
	DEFAULT_DIR="$HOME/.config/$d"
	# default direcotry already exist, remove it first.
	if [ -d $DEFAULT_DIR ]; then
		rm -rvf $DEFAULT_DIR
		# link to the real config dir
		ln -s $PWD/$d $HOME/.config/$d
	elif [ -f ~/$d ]; then
		rm -rvf ~/$d
		ln -s $PWD/dot_${d##.} ~/$d
	fi
done
