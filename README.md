# Usage

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
