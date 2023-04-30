
weatherreport="${HOME}/scripts/weatherreport" 

url="https://wttr.in/markham"







getConditions() {
temp=`sed '4q;d' ${weatherreport} | grep -o "+[0-9]"`
condition=` sed -n '3{s/^.*m\s*//; s/^[[:space:]]*//; s/^\.\-+\s*//; p}' ${weatherreport}` 
 

overcast="Overcast"


if [[ $condition = "Light rain" ]]; then
	echo "${temp} and "	 
fi

if [[ $condition = "Overcast" ]]; then
	echo "${temp} and "
fi

if [[ $condition = "Light rain, mist" ]]; then
	echo "${temp} and "
fi
}

getConditions

