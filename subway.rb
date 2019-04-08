
$subway = {
    n: ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
    l:["8th", "6th", "Union Square", "3rd", "1st"],
    six:["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}


 $stops =0

def oneLine(lineName, startStop, endStop)
    line_aray = $subway[lineName]
    result =""
    if (line_aray.index(startStop) < line_aray.index(endStop)) 
        i = line_aray.index(startStop) 
        while i <= line_aray.index(endStop)
            result =result + line_aray[i] + ", "
            i = i+1
            $stops = $stops+1
        end
    else
        j = line_aray.index(startStop) 
        while j >= line_aray.index(endStop)
            result =result + line_aray[j]+ ", "
            $stops =$stops -1  
            j = j-1
        end

    end
return result
   
end
# p oneLine(:n,"Times Square","28th")



def planTrip(firstLine, firstStop, secondLine, secondStop)

    if (firstLine == secondLine)
    endResult = oneLine(firstLine, firstStop, secondStop)
puts "You will travel through the following stops on the #{firstLine} line: #{endResult}"
    else 
        endResult = oneLine(firstLine, firstStop, "Union Square")
        secondResult = oneLine(secondLine, "Union Square", secondStop)
        puts "You will travel through the following stops on the #{firstLine} line: #{endResult}"
        puts "change at Union Square"
        puts "you will continues through the #{secondLine} follow stops:#{secondResult} "
    end
    puts "#{$stops} stops in total."

end


planTrip(:n,"Times Square",:l, "3rd")
