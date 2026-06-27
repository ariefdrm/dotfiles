#!/bin/sh
# This hyprpaper build (hyprtoolkit rewrite, v0.8.x) does NOT read
# hyprpaper.conf for wallpapers — wallpapers must be set over IPC.
# So we start hyprpaper, then push the wallpaper via hyprctl with a
# short retry loop until the IPC socket is ready.

WALLPAPER="$HOME/.config/hypr/image/furina_wallpaper.jpg"
MONITOR="eDP-1"

killall hyprpaper 2>/dev/null
hyprpaper >/dev/null 2>&1 &

for _ in $(seq 1 20); do
	if hyprctl hyprpaper wallpaper "$MONITOR,$WALLPAPER" >/dev/null 2>&1; then
		exit 0
	fi
	sleep 0.5
done

exit 1
