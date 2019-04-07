#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# don't know what this does :P
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# start with background
# feh --bg-fill /home/spark/backgrounds/wallhaven-636345.jpg

### X options

# set cursor
xsetroot -cursor_name left_ptr

# prevent screen from going out after inactivity
xset s off -dpms -b

# set rate for keypress delay
xset r rate 300 50

# load xresources
xrdb -load ~/.Xresources

# register fonts
xset +fp /home/spark/.fonts
xset fp rehash

# daemons
urxvtd -q -o -f
compton -b
dunst &
# exec polybar example &
# exec 2bwm
exec i3
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice


polybar example &

