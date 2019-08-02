[[ -f ~/.Xresources ]] && xrdb -merge -I/home/ananth ~/.Xresources
xss-lock -- i3lock -u -i ~/Downloads/Wallpaper.png &
exec i3
