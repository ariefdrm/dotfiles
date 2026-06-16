#!/usr/bin/env bash
# Outputs Waybar JSON for the currently active MPRIS player.
# Prints nothing when no player is running, so the module hides itself.

status=$(playerctl status 2>/dev/null)
[ -z "$status" ] && exit 0

title=$(playerctl metadata title 2>/dev/null)
artist=$(playerctl metadata artist 2>/dev/null)
player=$(playerctl metadata --format '{{playerName}}' 2>/dev/null)

# Play / pause glyph
if [ "$status" = "Playing" ]; then
    icon="󰐊"
    class="playing"
else
    icon="󰏤"
    class="paused"
fi

# Pango-escape (& < >) so titles with these chars don't break markup.
pango() { printf '%s' "$1" | sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g'; }
# JSON-escape (\ ") so the output stays valid JSON.
json() { printf '%s' "$1" | sed 's/\\/\\\\/g; s/"/\\"/g'; }

ptitle=$(pango "$title")
partist=$(pango "$artist")

if [ -n "$artist" ]; then
    label="$ptitle — $partist"
else
    label="$ptitle"
fi

# Coloured mauve play/pause icon + white track text.
text="<span color='#cba6f7'>$icon</span> $label"

text=$(json "$text")
tooltip=$(json "$(pango "$player: $title ${artist:+— $artist}")")

printf '{"text": "%s", "tooltip": "%s", "class": "%s"}\n' "$text" "$tooltip" "$class"
