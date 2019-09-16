#!/bin/sh

#get the video port to which screen is connected

VAR_DISPLAY=`xrandr --verbose | grep  " connected"| sed 's/ connected.*//g'`

if [ -z $VAR_DISPLAY ]

then

  echo "Err:Display details could not be found using xrandr"
  exit 1
fi

echo $VAR_DISPLAY

##

#get the current brightness settings [0 - 1]

VAR_BRIGHTNESS=$(xrandr --verbose | grep  "Brightness"| sed 's/.*Brightness: //g')

if [ -z $VAR_BRIGHTNESS ]

then

  echo "Err:Brightness setting could not be found using xrandr"
  exit 1
fi

##

#increase or decrease brightness

if [ -z $1 ]

then

  echo "Specify one of following option --increment | --decrement"
else if [ $1 = "--increment" ]

then

  test $( expr `expr "$VAR_BRIGHTNESS + .05"|bc`" > 1"|bc ) -eq 1 || xrandr --output $VAR_DISPLAY --brightness `expr "$VAR_BRIGHTNESS +.05"|bc`
else if [ $1 = "--decrement" ]

then

  test $( expr `expr "$VAR_BRIGHTNESS - .05"|bc`" < 0"|bc ) -eq 1 || xrandr --output $VAR_DISPLAY --brightness `expr "$VAR_BRIGHTNESS - .05"|bc`
else

  echo "Specify one of following option --increment | --decrement"
fi

fi

fi

##
