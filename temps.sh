#!/usr/bin/bash

#gets the temperature, then cleans the output to make sure it's only made of numbers
temp=$( vcgencmd measure_temp  | egrep -o '[0-9]*\.[0-9]*' )

#float to integer conversion (needed due to -gt command in line 15)
temp=${temp%.*}

#echoes date
echo $(date)
#echoes temperature
echo $temp

#critical temperature (60 degrees celsius by default)
if [ "$temp" -gt "60" ]
then #email is sent
	python3 temperature_mail.py

fi
