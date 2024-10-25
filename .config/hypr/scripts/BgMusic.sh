
rofi_config="$HOME/.config/rofi/config-ytbg.rasi"
    
# Kill Rofi if already running before execution
if pgrep -x "rofi" >/dev/null; then
    pkill rofi
    exit 0
fi

echo "" | rofi -dmenu -config "$rofi_config" -p "Yt url:" | xargs -I{} bash -c 'pkill mpvpaper; mpvpaper -o "input-ipc-server=/tmp/mpv-socket --hwdec=auto-safe" "HDMI-A-1" "{}"'

