
weatherreport="${HOME}/scripts/weatherreport" 

url="https://wttr.in/markham"
getforecast() {

curl -sf --max-time 4 "$url"  > "$weatherreport"
}





 









getforecast


