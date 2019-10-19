#!/bin/bash

# Save output device
if ! [[ -f _output ]]; then
  OUTPUT=$(xrandr | awk '/eDP/ {print $1}')
  echo $OUTPUT > _output
else
  OUTPUT=$(cat _output)
fi

# Save current brightness
if ! [[ -f _brightness ]]; then
  BRIGHTNESS=`xrandr --verbose | grep -m 1 -i brightness | cut -f2 -d ' '`
  echo $brightness > _brightness
else
  BRIGHTNESS=$(cat _brightness)
fi

change_brightness() {
  operation=$1
  percentage=0.05
  total=`echo $BRIGHTNESS $operation $percentage | bc`

  if [ $(echo "$total > 1 || $total < 0"| bc) -eq 1 ]; then
    echo "fim"
    exit 0
  fi

  echo $total > _brightness
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
