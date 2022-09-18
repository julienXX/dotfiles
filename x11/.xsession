# use UTF-8 everywhere
export LANG=en_US.UTF-8

# load Xresources file
xrdb -merge $HOME/.Xresources

# needed for kvantum & qt5ct
export QT_QPA_PLATFORMTHEME=qt5ct

# start dunst
dunst &

# start picom
picom &

# disable system beep
xset b off

# use caps lock as ctrl key
setxkbmap -option ctrl:nocaps -option compose:ralt

xbindkeys

# start WindowMaker!
exec wmaker
