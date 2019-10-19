#!/bin/bash

OUTPUT_FILE=~/.config/backlight/_output
BRIGHTNESS_FILE=~/.config/backlight/_brightness

# Save output device
if ! [[ -f ${OUTPUT_FILE} ]]; then
  OUTPUT=$(xrandr | awk '/eDP/ {print $1}')
  echo $OUTPUT > $OUTPUT_FILE
else
  OUTPUT=$(cat $OUTPUT_FILE)
fi

# Save current brightness
if ! [[ -f ${BRIGHTNESS_FILE} ]]; then
  BRIGHTNESS="0.50"
  echo $BRIGHTNESS > $BRIGHTNESS_FILE
else
  BRIGHTNESS=$(cat $BRIGHTNESS_FILE)
fi

change_brightness() {
  operation=$1
  percentage=0.05
  total=`echo $BRIGHTNESS $operation $percentage | bc`

  if [ $(echo "$total > 1 || $total < 0"| bc) -eq 1 ]; then
    echo "fim"
    exit 0
  fi

  echo $total > $BRIGHTNESS_FILE
  xrandr --output $OUTPUT --brightness $total

  pkill dunst
  notify-send "Brightness: $total %"
}

if [[ $1 == 'inc' ]]; then
  change_brightness +
fi

if [[ $1 == 'dec' ]]; then
  change_brightness -
fi

if [[ $1 == 'get' ]]; then
  echo $BRIGHTNESS
fi

if [[ $1 == 'notify' ]]; then
  notify-send "Brightness: $BRIGHTNESS %"
fi

if [[ $1 == 'set' ]]; then
  xrandr --output $OUTPUT --brightness $BRIGHTNESS
fi
