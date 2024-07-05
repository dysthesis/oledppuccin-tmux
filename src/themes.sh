#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @tokyo-night-tmux_theme)"

case $SELECTED_THEME in
*)
  # Default to night theme
  declare -A THEME=(
    ["background"]="#000000"
    ["foreground"]="#ffffff"
    ["black"]="#11111b"
    ["blue"]="#89b4fa"
    ["cyan"]="#94e2d5"
    ["green"]="#a6e3a1"
    ["magenta"]="#cba6f7"
    ["red"]="#f38ba8"
    ["white"]="#cdd6f4"
    ["yellow"]="#fab387"

    ["bblack"]="#181825"
    ["bblue"]="#74c7ec"
    ["bcyan"]="#94e2d5"
    ["bgreen"]="#a6e3a1"
    ["bmagenta"]="#cba6f7"
    ["bred"]="#f5c2e7"
    ["bwhite"]="#ffffff"
    ["byellow"]="#f9e2af"
  )
  ;;
esac

THEME['ghgreen']="#3fb950"
THEME['ghmagenta']="#A371F7"
THEME['ghred']="#d73a4a"
THEME['ghyellow']="#d29922"

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
