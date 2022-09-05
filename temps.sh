#!/usr/bin/bash
#!/usr/bin/python3.9

#acquisisce temperatura ed elimina lettere
temp=$(vcgencmd measure_temp  | egrep -o '[0-9]*\.[0-9]*')
#converte temperatura in intero invece di float
temp=${temp%.*}

echo $(date)
echo $temp

#condizione critica
if [ "$temp" -gt "60" ]
then #invia mail
	python3 hmail.py

fi
