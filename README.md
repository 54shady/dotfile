# Usage

## Basic Comcept

### xprofile

~/.xprofile和/etc/xprofile的加载顺序在X session前即在(WindowManager)前

xprofile被下面的DisplayManager加载

- GDM(/etc/gdm/Xsession)
- LightDM(/etc/lightdm/Xsession)
- LXDM(/etc/lxdm/Xsession)
- SDDM

如果使用了DM的情况下加载顺序如下

	DM--> source xprofile --> WM

如果不使用DM的话xprofile还可以被下面程序加载

- startx
- xinit
- XDM
- 其他使用~/.xsession或~/.xinitrc的DM

~/.xinitrc and /etc/X11/xinit/xinitrc

	#!/bin/sh

	# Make sure this is before the 'exec' command or it won't be sourced.
	[ -f /etc/xprofile ] && . /etc/xprofile
	[ -f ~/.xprofile ] && . ~/.xprofile

### 使用startx来启动xinitrc

login fromm tty1 work flow(Xresources should load before i3wm)

	.bash_profile ==> startx ==> .xinitrc ==> i3wm

## Download and Install

Download the source code

	git clone https://github.com/54shady/dotfile.git ~/.dotfile

Install Tmux Plugin Manager

	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

## Make Links

Make links to the target file

	ln -s ~/.dotfile/dot_bashrc ~/.bashrc
	ln -s ~/.dotfile/dot_gitconfig ~/.gitconfig
	ln -s ~/.dotfile/dot_tmux.conf ~/.tmux.conf
	ln -s ~/.dotfile/dot_xprofile ~/.xprofile
	ln -s ~/.dotfile/dot_vimperatorrc ~/.vimperatorrc
	ln -s ~/.dotfile/dot_bash_profile ~/.bash_profile
	ln -s ~/.dotfile/dot_xinitrc ~/.xinitrc
	ln -s ~/.dotfile/dot_xsession ~/.xsession
	ln -s ~/.dotfile/dot_url_handler.sh ~/.url_handler.sh
	ln -s ~/.dotfile/dot_extract_urlview ~/.extract_urlview
	ln -s ~/.dotfile/dot_Xresources ~/.Xresources

## Do web search in terminal

Quick search in terminal using hotkey 's'

	ln -s ~/.dotfile/web_search ~/tools/s

Export the path of tools directory

Example for search "gentoo linux"

	$ s gentoo linux

## Quick translate in terminal

Make a link(the first charactor of translate)

	ln -s ~/.dotfile/youdaofanyi.py ~/tools/t

Translate using youdao online dictionary

	$ t hello world
	$ t 'have a nice day'
