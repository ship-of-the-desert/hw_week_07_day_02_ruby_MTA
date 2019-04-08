$mta= {
line_n: ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
line_l: ["8th", "6th", "Union Square", "3rd", "1st"],
line_6: ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"],
}

$stops = 0 

def one_line(line_name, start_stop, end_stop)
lines = $mta[line_name]
result = []
    if lines.index(start_stop) < lines.index(end_stop)
    i = lines.index(start_stop)+1
        while i <= lines.index(end_stop)
        result << lines[i]
        i =i+1
        $stops=$stops+1
        end
        
    elsif lines.index(start_stop) > lines.index(end_stop)
            i = lines.index(start_stop)-1
            while i >= lines.index(end_stop)
                result <<lines[i]
                i=i-1
                $stops=$stops+1
            end
    end
    return result
end

def plan_trip(first_line, first_stop, second_line, second_stop)
    if first_line === second_line
        trip1=one_line(first_line, first_stop, second_stop)
        puts "You must travel through the following stops on the #{first_line}  #{trip1}"
    else
    trip1=one_line(first_line,first_stop,"Union Square")
    trip2=one_line(second_line, "Union Square", second_stop)
    puts "You must travel through the following stops on the #{first_line}  #{trip1}"
    puts "Change at Union Square."
    puts "Your journey continues through the #{second_line} following stops: #{trip2}"
    end 
    puts "#{$stops}stops in total."
end

puts plan_trip(:line_n, "Times Square", :line_6, "33rd")
puts plan_trip( :line_n, "Times Square", :line_6, "Grand Central" )

