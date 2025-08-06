#!/usr/bin/env bash

bg=#1a1b26
fg=#c0caf5
primary=#ff9e64
secondary=#7aa2f7

# Left
status_left="#[bg=$bg,fg=$secondary]#{?client_prefix,, #S }#[bg=$secondary,fg=$bg,bold]#{?client_prefix, #S ,}#[bg=$bg,fg=${secondary}]"

# Right
status_separator="#[bg=$bg,fg=$secondary]•#[bg=$bg,fg=${primary}]"

cpu=#(~/.config/tmux/statusbar/cpu.sh)
status_cpu="#[bg=$bg,fg=$secondary]$cpu#[bg=$bg,fg=$secondary]"

battery=#(~/.config/tmux/statusbar/battery.sh)
status_battery="#[bg=$bg,fg=$secondary]$battery#[bg=$bg,fg=$secondary]"

status_time="#[bg=$bg,fg=$secondary]%a %d %H:%M#[bg=$bg,fg=${secondary}]"

status_right="$status_cpu $status_separator $status_battery $status_separator $status_time"

# Setup
window_status_format=' #I #W '

separator=' • '

set-option -g status-position "bottom"
set-option -g status-style "bg=${bg},fg=${fg}"
set-option -g status-justify "absolute-centre"

set-option -g status-left "$status_left"
set-option -g status-right "$status_right"

set-window-option -g window-status-separator "$separator"

set-option -g window-status-style "bg=${bg},fg=${fg}"
set-option -g window-status-format "$window_status_format"
set-option -g window-status-current-format "#[bg=${bg},fg=${primary}]${window_status_format}#[fg=${bg},bg=default]"
