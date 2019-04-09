# planTrip("N", "Times Square", "6", "33rd"); 
# plan_trip( :n, "Times Square", :l, "Grand Central" )
 

def planTrip (start_Line ,start_stop, end_line, end_stop)

    stops = 0
# $stops = 0 
     
    results =""
    start = start_Line

line_n = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
line_l =["8th", "6th", "Union Square", "3rd", "1st"]
line_6 = ["Grand Central","33rd", "28th","23rd", "Union Square", "Astor Place"]


    # start line 
    if start_Line.eql?("N")
        start_Line = line_n 
    elsif start_Line.eql?("L")
        start_Line=line_l
    else
        start_Line=line_6
    end


    # end line
if end_line.eql?("N")
    end_line =line_n 
elsif end_line.eql?("L")
    end_line=line_l
else
    end_line=line_6
end

# index of start_stop and end_stop
index_start = start_Line.index(start_stop)
index_end = end_line.index(end_stop)

 # if the trip is on one line 
 if start_Line.eql?(end_line)

    index_end = start_Line.index(end_stop) 
    
    while  (index_start <=  index_end)  
    results += start_Line[index_start]+" "
    index_start+=1 
    stops= stops +1
    end 

    puts "....trip is on one line...."
    puts "You must travel through the following stops on the #{start} line:"
    puts"#{results}"
    puts "#{stops} stops in total."
    
    else 

        # when the start and end stops on the two lines
        union1 = start_Line.index("Union Square") 
        union2 = end_line.index("Union Square")
        result2=""

        while (index_start <= union1)
            results += start_Line[index_start]+" "
            index_start +=1
           stops=stops +1

            end
            
            puts "....trip is on two line.... "
            puts "You must travel through the following stops on the #{start} line:"
            puts"#{results}"
            puts "Change at Union Square."

            ## second part 
 if union2>= index_end 
    while (union2> index_end )
        result2 += end_line[union2-1]+" " 
        stops =stops +1

        #previos stop
        union2 -=1  
    end
else 
    while (union2 < index_end)# do until reach end stop
        result2 +=end_line[union2 + 1]+" "#add an element that after union S into the result
    stops =stops +1

    #next stop
    union2 += 1 
    end
    stops  +=1  

end

puts "Your journey continues through the following stops:#{result2}"
puts "#{stops-1} stops in total."

end 

end 

planTrip("N", "Times Square", "6", "33rd")
planTrip("N", "Times Square", "N", "28th")

