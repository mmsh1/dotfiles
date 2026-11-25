#!/usr/bin/env bash
set -u

pid_file="${XDG_RUNTIME_DIR:-$HOME/.cache}/bspwm-monitor-hotplug.pid"

if [[ -r "$pid_file" ]]; then
    read -r old_pid < "$pid_file"
    if [[ "$old_pid" =~ ^[0-9]+$ ]] && kill -0 "$old_pid" 2>/dev/null; then
        exit 0
    fi
fi

printf '%s\n' "$$" > "$pid_file"
trap 'rm -f "$pid_file"' EXIT INT TERM

monitor_state() {
    {
        xrandr --current 2>/dev/null
        xrandr --listmonitors 2>/dev/null
    } | cksum
}

previous="$(monitor_state)"

xev -root -event randr | while IFS= read -r line; do
    case "$line" in
        *RRScreenChangeNotify*|*RRNotify*)
            sleep 1
            while IFS= read -r -t 0.2 _; do
                :
            done
            current="$(monitor_state)"
            if [[ -n "$current" && "$current" != "$previous" ]]; then
                previous="$current"
                bspc wm -r
                previous="$(monitor_state)"
            fi
            ;;
    esac
done
