$lines = {
    "N" => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
    "L" => ["8th", "6th", "Union Square", "3rd", "1st"],
    "6" => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
            }


def plan_trip(starting_line, starting_stop,ending_line,ending_stop)

    $counter = 0
    # if the trip is on one line
    if starting_line == ending_line
        stop1 = starting_stop
        stop2 = ending_stop
        if stop2 > stop1
            $lines[starting_line] = $lines[starting_line].reverse

        end
        string = "You must travel through the following stops on the #{starting_line} line:"
        i = $lines[starting_line].index(stop1) + 1
        while i <= $lines[starting_line].index(stop2) do
            string = string + "#{$lines[starting_line][i]}, "
            i = i+1
            $counter = $counter + 1
        end

        p string
        p "#{$counter} stops in total"
        # end of one line trip
        
    #------- first line 
    else
        if $lines[starting_line].index(starting_stop) > $lines[starting_line].index('Union Square')
            $lines[starting_line] = $lines[starting_line].reverse
        end

        string = "You must travel through the following stops on the #{starting_line} line:"
        i = $lines[starting_line].index(starting_stop) + 1
        while i <= $lines[starting_line].index('Union Square') do
            string = string + "#{$lines[starting_line][i]}, "
            i = i+1
            $counter = $counter + 1
        end

        p string
        p "Change at Union Square."
        # ---- end of first line



        #--- second line

        if $lines[ending_line].index(ending_stop) < $lines[ending_line].index('Union Square')
            $lines[ending_line] = $lines[ending_line].reverse
        end

        string = "Your journey continues through the following stops: "
        i = $lines[ending_line].index('Union Square') + 1 
        while i <= $lines[ending_line].index(ending_stop) do
            string = string + "#{$lines[ending_line][i]}, "
            i = i + 1
            $counter = $counter + 1
        end

        p string
        p "#{$counter} stops in total"
        #--- end of second line
end

    
end


plan_trip("N", "Times Square", "6", "33rd")
plan_trip("N", "Times Square", "N", "8th")


