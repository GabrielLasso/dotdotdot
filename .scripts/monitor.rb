#!/bin/ruby

output=(`xrandr | grep " connected" | cut -f1 -d" "`).split(' ')
arr = []
for i in 1..(output.length)
    arr = arr + output.combination(i).to_a
end
for i in 0...arr.size
    arr[i]=arr[i].join("+")
end
arr = arr.join("\n")
chosen = `echo "#{arr}" | dmenu`[0..-2]
chosen = chosen.split ('+')
cmd = "xrandr"
last_out = nil
for i in 0...output.size
    if chosen.include? output[i]
        cmd << " --output #{output[i]} --auto"
        cmd << " --right-of #{last_out}" unless last_out.nil?

        last_out = output[i]
    else
        cmd << " --output #{output[i]} --off"
    end
end
print chosen
if chosen.size > 0
`#{cmd}`
end
