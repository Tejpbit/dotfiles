#!/bin/sh

export LANG="en_GB.UTF-8"
setxkbmap se

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xset r rate 220 50

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

urxvtd -q -f -o

xcompmgr -c -r 0 &

nm-applet &

#compton -bCz -o 0 -r 0 -D 3
#compton --config $HOME/dotfiles/config/compton/compton.conf -b
feh --bg-fill Pictures/hufkgs7vvk631.jpg
srandrd myscreensetup

setxkbmap -option caps:escape
exec i3
