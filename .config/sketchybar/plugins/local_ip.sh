sketchybar --set $NAME \
  label="Loading..." \
  icon.color=0xff5edaff

LOCAL_IP="$(ipconfig getifaddr en0)"

sketchybar --set "$NAME" label="$LOCAL_IP"
