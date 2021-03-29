#!/usr/bin/env bash
set -eu

[[ -z "$(pgrep i3lock)" ]] || exit
i3lock -n -u -t -i /home/spark/Pictures/wallhaven-x8893d.png
