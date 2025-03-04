#! /bin/bash
swaymsg workspace 1
swaymsg layout tabbed
swaymsg exec gnome-calendar &
swaymsg exec "flatpak run im.riot.Riot" &
swaymsg exec thunderbird &
swaymsg exec keepassxc &
swaymsg exec tuxedo-control-center
#swaymsg exec "mullvad-exclude firefox --profile \
#  /home/m/.mozilla/firefox/pb8kmivp.SwayWM \
#  --new-window https://matrix.endor.cyou" &
# swaymsg exec "mullvad-exclude qutebrowser \
#  -B .local/share/qutebrowser2/ \
#  -C .config/qutebrowser/config-no-vpn.py \
#  --untrusted-args https://element.endor.cyou" &
#&
