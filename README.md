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

Make links to the target file using [deply.sh](deploy.sh)

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

## MailBox setup

mail info

	name: demo@163.com
	password: mypass

mutt

	ln -s ~/.dotfile/dot_muttrc ~/.muttrc
	sed -i 's/yournamegoeshere/realname/' ~/.dotfile/dot_muttrc
	sed -i 's/name@server/demo@163.com/' ~/.dotfile/dot_muttrc

getmail(执行getmail收取邮件 可以写入crontab)

	ln -s ~/.dotfile/getmail ~/.getmail
	sed -i 's/name@server/demo@163.com/' ~/.dotfile/getmail/getmailrc
	sed -i 's/pass-for-demo/mypass/' ~/.dotfile/getmail/getmailrc

使用sys-process/cronie来定时执行

	sudo crond
	crontab -e

每一分钟收取一次邮件

	* * * * * /usr/bin/getmail &> /dev/null

msmtp

	ln -s ~/.dotfile/dot_msmtprc ~/.msmtprc
	chmod 600 ~/.msmtprc
	sed -i 's/name@server/demo@163.com/' ~/.dotfile/dot_msmtprc
	sed -i 's/pass-for-demo/mypass/' ~/.dotfile/dot_msmtprc
