LOCAL_IP="$(ipconfig getifaddr en0)"

sketchybar --set local_ip label="$LOCAL_IP"
