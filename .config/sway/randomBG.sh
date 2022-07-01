#!/bin/bash
dir="/home/kirato/wallpaper"
file=`/bin/ls -1 "$dir" | sort --random-sort | head -1`
path=`readlink --canonicalize "$dir/$file"` # Converts to full path
swaymsg output "*" bg $path fill &
