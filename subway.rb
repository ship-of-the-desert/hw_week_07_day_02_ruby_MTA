
def planTrip(start_Line,start_stop,end_line,end_stop)

num_of_steps=0;#count num of steps through the whole trip
start=start_Line# start line used it in the output as display the name of start line
result1=""# to store the stops
n_line=["Times Square", "34th", "28th", "23rd", "Union Square","8th"]
l_line=[ "8th", "6th", "Union Square", "3rd","1st"]
line6=["Grand Central", "33rd", "28th", "23rd", "Union Square","Astor Place"] 

# find start line:
if start_Line.eql?("N")
    start_Line=n_line 
elsif start_Line.eql?("L")
    start_Line=l_line
else
    start_Line=line6
end

# find end line:
if end_line.eql?("N")
    end_line=n_line 
elsif end_line.eql?("L")
    end_line=l_line
else
    end_line=line6
end


#find index of start stop
ind_start=start_Line.index(start_stop)
#find index of end stop
ind_end=end_line.index(end_stop)

#..............................................

#if the start and end stops on the same line
if start_Line.eql?(end_line)

ind_end=start_Line.index(end_stop)#to get the index of end stop that in the same line of start line

while  (ind_start<=ind_end)  #do while until reach end stop
result1+=start_Line[ind_start]+" "# add stop to result
ind_start+=1# increse index by 1 to move to the next stop
num_of_steps=num_of_steps+1# count the number of stops by adding 1 for each stop
end #end while
puts ".....This is one line..... "
puts "You must travel through the following stops on the #{start} line:"
puts"#{result1}"
puts "#{num_of_steps} stops in total."

else 
#..............................................
 
#if the start and end stops on the two lines
union1=start_Line.index("Union Square")#Union Square" at start line
union2=end_line.index("Union Square")#Union Square" at end line
result2=""# to store stops after Union Square in the endline 

# first part of result
while (ind_start<=union1)# do until reach union at start line
result1+=start_Line[ind_start]+" "#add stop from start line to result
ind_start+=1#move to the next stop
num_of_steps=num_of_steps+1#count num of stop
end

puts ".....This is two lines..... "
puts "You must travel through the following stops on the #{start} line:"
puts"#{result1}"
puts "Change at Union Square."

# second part of result "after reach union from start line"
 if union2>=ind_end  # left side of endline array where the union index is greater than index of end stop
    while (union2>ind_end)#do until rach end stop
        result2+=end_line[union2-1]+" "# add an element that before union S into the result
        num_of_steps=num_of_steps+1
        union2-=1# to move to the previos stop
    end
else # right side of endline array
    while (union2 < ind_end)# do until reach end stop
        result2 +=end_line[union2 + 1]+" "#add an element that after union S into the result
    num_of_steps=num_of_steps+1
    union2+=1# to move to the next stop
    end
    num_of_steps+=1# to count the end point at right side of endline 

end

puts "Your journey continues through the following stops:#{result2}"
puts "#{num_of_steps-1} stops in total."# -1 to not count union stop twice

end 

end 
planTrip("N", "Times Square", "6", "33rd"); 
planTrip("N", "Times Square", "N", "28th"); 
# planTrip("N", "Times Square", "6", "Astor Place");
# planTrip("N", "Times Square", "L", "1st");
#planTrip("L", "6th", "N", "8th");

