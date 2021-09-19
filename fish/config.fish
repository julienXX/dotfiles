set -x MOZ_ENABLE_WAYLAND 1
set -x MOZ_WAYLAND_USE_VAAPI 1
set -x XDG_RUNTIME_DIR /tmp/1000
set -x XDG_SESSION_TYPE wayland
set -x QT_QPA_PLATFORM wayland-egl
set -x ELM_DISPLAY wl
set -x LIBSEAT_BACKEND seatd
set -x LIBVA_DRIVER_NAME radeonsi

fish_add_path /home/julien/.cargo/bin

function mcd --wraps mkdir --description 'alias mcd=mkdir && cd'
    mkdir $argv && cd $argv
end

function findrm
    find . -iname "$argv" -exec rm -r {} \;
end

alias psgrep="ps aux | grep"
alias anonradio="mpv http://anonradio.net:8000/anonradio"
alias tilderadio="mpv https://radio.tildeverse.org/radio/8000/radio.ogg"
alias droogies="mpv http://www.droogies.org:8000/stream"
alias tv="mpv http://baud.vision:21225 --really-quiet"
alias pkg="doas vpm"

fish_ssh_agent
source $HOME/.config/fish/autojump.fish
source $HOME/.config/fish/functions/prompt.fish

if test (tty) = "/dev/tty1"
    brightnessctl set 30%
    mkdir -p /tmp/1000
    hikari
    #startx
end
