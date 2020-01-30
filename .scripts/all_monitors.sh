script="xrandr"
for monitor in `xrandr | grep " connected" | cut -f1 -d" "`
do
	script+=" --output $monitor"
	if [ ! -z $previous ]
	then
		script+=" --left-of $previous"
	fi
	previous=$monitor
done

`$script`
