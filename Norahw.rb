
# defining the lines and stops 
$subway_lines = {
    "N" => ["Times Square", "34th","28th", "23rd", "Union Square", "8th"],
    "L" => ["8th", "6th", "Union Square", "3rd",  "1st"],
    "6" => ["Grand Central", "33rd", "28th", "23rd", "Union Square",  "Astor Place"]   
}
$travel_path =[]
$stops =0

def get_path(on_line, on_stop, off_line, off_stop)
    i = $subway_lines[on_line].index(on_stop)+1
    while i < $subway_lines[off_line].index(off_stop)+1
        $travel_path <<  $subway_lines[on_line][i]
        i = i + 1
    end
end

def same_line(line, start, stop)
    # result 
    line_path = []
    # -1 or 1
    counter_element = $subway_lines[line].index(stop)  <=> $subway_lines[line].index(start)
    i = $subway_lines[line].index(start) + counter_element
    p ($subway_lines[line].index(stop)  <=> i)
   p  $subway_lines[line].index(stop) != i
    while $subway_lines[line].index(stop) != i
        line_path << $subway_lines[line][i]

        p $subway_lines[line][i]
        i = i + counter_element
    end
return line_path
end 


def get_total_stops()


end

p same_line("N", "Times Square", "Union Square");
p same_line("N", "Union Square" , "Times Square");
# same_line("N", "Times Square", "N", "Union Square"); 

p $travel_path
# lanTrip("N", "Times Square", "6", "33rd"); 
# plan_trip( :n, "Times Square", :l, "Grand Central" )

#  sample Output
#  "You must travel through the following stops on the N line: 34th, 28th, 23rd, Union Square."
#  "Change at Union Square."
#  "Your journey continues through the following stops: 23rd, 28th, 33rd."
#  "7 stops in total."


# index()
# .include?()
