$subway_system = {
    "n" => ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th'],
    "l" => ['8th', '6th', 'Union Square', '3rd', '1st'],
    "6" => ['Grand Central', '33rd', '28th', '23rd', 'Union Square', 'Astor Place'],
}
$stops = 0

def one_line(lineName, startStop, endStop)
    arr = $subway_system[lineName]
    result=""
    if arr.index(startStop) < arr.index(endStop)
    i=arr.index(startStop) + 1
    while i <= arr.index(endStop)
        result << arr[i] +" ,"
        i = i + 1
        $stops = $stops + 1
    end
    else
        i=arr.index(startStop) - 1 
        while i >= arr.index(endStop)
            result << arr[i] + " ,"
            i = i - 1
            $stops = $stops + 1
        end
end
return result
end

def plan_trip(firstLine, firstStop, secondLine, secondStop)
    if firstLine === secondLine
        only_on_line = one_line(firstLine,firstStop,secondStop) 
        puts "You must travel through the following stops on the #{firstLine} line: #{only_on_line}"

    else
part1=one_line(firstLine,firstStop,"Union Square")
part2=one_line(secondLine,"Union Square",secondStop)
puts "You must travel through the following stops on the #{firstLine} line: #{part1}"
puts "Change at Union Square."
puts  "Your journey continues through the #{secondLine} following stops: #{part2}"
end
puts "#{$stops} stops in total."
end
# puts one_line(line_N,"23rd","Times Square")
# puts one_line(line_N,"Times Square","23rd")
puts plan_trip("n", "Times Square", "6", "Grand Central" )
# puts plan_trip("n", "Times Square", "n", "8th" )