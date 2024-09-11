LOCAL_IP="$(ipconfig getifaddr en0)"


local_ip=(
  icon=🌐
  icon.font="$FONT:Black:12.0"
  icon.padding_right=0
  label.align=right
  padding_left=15
  update_freq=30
  script="$LOCAL_IP"
)

sketchybar --add item local_ip right \
           --set local_ip "${local_ip[@]}" \
           --set local_ip label="$LOCAL_IP"

