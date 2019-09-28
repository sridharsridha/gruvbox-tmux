#!/usr/bin/env bash
# Copyright (C) 2019-present Sridhar Nagarajan <sridha.in@gmail.com>

# Project:    Gruvbox tmux
# Repository: https://github.com/sridharsridha/gruvbox-tmux
# References:
#   https://tmux.github.io

GRUVBOX_TMUX_COLOR_THEME_FILE=src/gruvbox.conf
GRUVBOX_TMUX_VERSION=0.3.0
GRUVBOX_TMUX_STATUS_CONTENT_FILE="src/gruvbox-status-content.conf"
GRUVBOX_TMUX_STATUS_CONTENT_NO_PATCHED_FONT_FILE="src/gruvbox-status-content-no-patched-font.conf"
GRUVBOX_TMUX_STATUS_CONTENT_OPTION="@gruvbox_tmux_show_status_content"
GRUVBOX_TMUX_NO_PATCHED_FONT_OPTION="@gruvbox_tmux_no_patched_font"
_current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

__cleanup() {
  unset -v GRUVBOX_TMUX_COLOR_THEME_FILE GRUVBOX_TMUX_VERSION
  unset -v GRUVBOX_TMUX_STATUS_CONTENT_FILE GRUVBOX_TMUX_STATUS_CONTENT_NO_PATCHED_FONT_FILE
  unset -v GRUVBOX_TMUX_STATUS_CONTENT_OPTION GRUVBOX_TMUX_NO_PATCHED_FONT_OPTION
  unset -v _current_dir
  unset -f __load __cleanup
}

__load() {
  tmux source-file "$_current_dir/$GRUVBOX_TMUX_COLOR_THEME_FILE"

  local status_content=$(tmux show-option -gqv "$GRUVBOX_TMUX_STATUS_CONTENT_OPTION")
  local no_patched_font=$(tmux show-option -gqv "$GRUVBOX_TMUX_NO_PATCHED_FONT_OPTION")

  if [ "$status_content" != "0" ]; then
    if [ "$no_patched_font" != "1" ]; then
      tmux source-file "$_current_dir/$GRUVBOX_TMUX_STATUS_CONTENT_FILE"
    else
      tmux source-file "$_current_dir/$GRUVBOX_TMUX_STATUS_CONTENT_NO_PATCHED_FONT_FILE"
    fi
  fi
}

__load
__cleanup
