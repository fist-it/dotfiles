source $CONFIG_DIR/openweathermapAPI.sh

sketchybar --set $NAME \
  label="Loading..." \
  icon.color=0xff5edaff

# fetch weather data
LOCATION="Gdansk"
REGION=""
LANG="en"

# Line below replaces spaces with +
LOCATION_ESCAPED="${LOCATION// /+}+${REGION// /+}"
WEATHER_JSON=$(curl -s "https://api.openweathermap.org/data/2.5/weather?q=$LOCATION&appid=$OWM_API_KEY&units=metric")

# Fallback if empty
# if [ -z $WEATHER_JSON ]; then
#   sketchybar --set $NAME label="$LOCATION"
#   return
# fi

TEMPERATURE=$(echo $WEATHER_JSON | jq '.main.temp' | tr -d '"' | awk '{printf "%.0f", $1}')
WEATHER_DESCRIPTION=$(echo "$WEATHER_JSON" | jq '.weather[0].description' | tr -d '"')
#WEATHER_DESCRIPTION=$(echo $WEATHER_JSON | jq '.current_condition[0].lang_ko[0].value' | tr -d '"' | sed 's/\(.\{16\}\).*/\1.../')

sketchybar --set $NAME \
  label="$TEMPERATURE$(echo '°')C, $WEATHER_DESCRIPTION"
