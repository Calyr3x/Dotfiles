#!/usr/bin/env bash

json="$(hyprctl devices -j)"

layout=$(echo "$json" | jq -r '.keyboards[3].active_keymap')

if [ "$layout" = "English (US)" ]; then
  layout="US"
elif [ "$layout" = "Russian" ]; then
  layout="RU"
fi

echo "{\"text\":\"$layout\"}"
