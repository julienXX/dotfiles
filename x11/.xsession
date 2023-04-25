# use UTF-8 everywhere
export LANG=en_US.UTF-8

# load Xresources file
xrdb -merge $HOME/.Xresources

# needed for kvantum & qt5ct
export QT_QPA_PLATFORMTHEME=qt5ct

# Firefox and nvidia
export LIBVA_DRIVER_NAME=vdpau
export VDPAU_DRIVER=nvidia

# Set background color
# hsetroot -solid "Slate Gray"
feh --bg-scale ~/Pictures/chihiro020.jpg

# start dunst
dunst &

# start picom
picom &

# start volnoti
volnoti &

# start volnoti
polkit-dumb-agent &

# disable system beep
xset b off

xbindkeys

# use caps lock as ctrl key
setxkbmap -option ctrl:nocaps -option compose:ralt

# clock in the upper right corner
xclock -geometry 100x100-60+20 &

# stalonetray below
stalonetray --geometry 1x2-20+20 --grow-gravity N --icon-gravity N -bg whitesmoke --icon-size=24 --kludges=force_icons_size --max-geometry 1x4 &

mfa_tray &

# start cwm
# exec /home/julien/src/TMP/cwm/cwm
