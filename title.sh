


if pgrep spotify > /dev/null; then 
	title=`playerctl --player spotify metadata | sed -n 's/spotify xesam:title//p'`  
	echo $title
else

	echo "spotify not running"
	exit 0
fi



