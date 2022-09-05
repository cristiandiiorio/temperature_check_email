#!/usr/bin/bash
#!/usr/bin/python3.9

#gets the temperature, then cleans the output to make sure it's only made of numbers
temp=$( vcgencmd measure_temp  | egrep -o '[0-9]*\.[0-9]*' )

#float to integer conversion (otherwise -gt command in line 15 will not work)
temp=${temp%.*}

#echoes date
echo $(date)
#echoes temperature
echo $temp

#temperature limit
temp_limit=60

#critical temperature check (60 degrees celsius by default)
if [ "$temp" -gt "$temp_limit" ]
then #email is sent
	python3 temperature_mail.py

fi
