#!/bin/bash
FILE=$(find ~/Pictures/wallpapers/ -iname '*.png' | sort -R | head -n 1)
i3lock -t -i $FILE
