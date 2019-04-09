N = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
L = ["8th", "6th", "Union Square", "3rd",  "1st"]
S = ["Grand Central", "33rd", "28th", "23rd", "Union Square",  "Astor Place"]
$total_stops = 0
$tr = ""
@lines = {N => "N",
    L => "L",
    S => "6"
     
}
 def trip1(line,first,final , start)
    if line == 6 
        line = S
    end
 if line.index(first) > line.index(final)
   $total_stops= line.index(first) - line.index(final)  + $total_stops
       x =  line.index(first)
       y =  line.index(final)
       until y >= x  do 
        $tr =  $tr + " ," + line[x]  
        x = x - 1
        end 

else 
$total_stops= line.index(final) -  line.index(first) 
    x =  line.index(first)
    y =  line.index(final)
    until y <= x  do 
 $tr =  $tr +  " ," + line[x] 
      x = x + 1
     end 
 end
# return total_stops
if start == 1 
 return "You must travel through the following stops on the #{@lines[line]} line: #{$tr} , "
else 
return "Your journey continues through the following stops:#{$tr} "
end
end
p trip1( L,"Union Square","1st" , 1)


# p N[5]
# p trip1( N,"Times Square","Union Square" , 1)
def planTrip(line1 , stop1 , line2 , stop2 )
    if line1 == line2 
        p trip1( line1 ,stop1 ,  stop2 , 1)
 return  p "#{$total_stops} stops in total." 
    end 
  p trip1( line1 ,stop1 ,  "Union Square" , 1)
  p "Change at Union Square."
  p trip1( line2 , "Union Square",  stop2 , 2)
p "#{$total_stops} stops in total." 
end
planTrip(N, "Times Square", L, "1st")
# planTrip(N, "Times Square", N, "8th")

# def planTrip(line1 , stop1 , line2 , stop2 )
#     p trip1( line1 ,stop1 ,  "Union Square" , 1)
#     p 'Change at Union Square.'
#     p trip1(line2 ,"Union Square" ,  stop2 , 1)
#     p "#{$total_stops} stops in total." 
# end

# planTrip(N, "Times Square", S, "33rd")
# planTrip("N", "Times Square", "6", "33rd"); 



# N = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
# L = ["8th", "6th", "Union Square", "3rd",  "1st"]
# S = ["Grand Central", "33rd", "28th", "23rd", "Union Square",  "Astor Place"]
# total_stops = 0
# $tr = ""
#  def trip1(line,first,final , start)
#  if line.index(first) > line.index(final)
#    $total_stops= line.index(first) - line.index(final)  + $total_stops
#        x =  line.index(first)
#        y =  line.index(final)
#        until y > x  do 
#         $tr =  $tr +  line[x] + " ,"
#         x = x - 1
#         end 
# else 
# $total_stops= line.index(final) -  line.index(first)  
#     x =  line.index(first)
#     y =  line.index(final)
#     until y < x  do 
#  $tr =  $tr +  line[x] + " ,"
#       x = x + 1
#      end 
#  end
# # return total_stops
# if start == 1 
#  return "You must travel through the following stops on the N line: #{$tr} , "
# else 
# return "Your journey continues through the following stops:#{$tr} "
# end
# end
# # p trip1( L,"Union Square","1st" , 1)
# # p trip1( N,"Times Square","Union Square" , 1)
# # p N[5]
#   def planTrip(line1 , stop1 , line2 , stop2 )
#   p trip1( line1 ,stop1 ,  "Union Square" , 1)
#   p "Change at Union Square."
#   p trip1( line2 , "Union Square",  stop2 , 2)
# p "#{$total_stops} stops in total." 
# end
# planTrip(N, "Times Square", S, "33rd")