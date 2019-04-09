the_n_line =["times square", "34th", "28th", "23rd", "Union Square", "8th"]
the_l_line =["8th", "6th", "Union Square", "3rd", "1st"]
the_6_line =["Grand Central"," 33rd", "28th", "23rd","Union Square",  "Astor Place"]
$total_trip = []
$total_stops = []
 def plan_trip(pickup_line,pickup_station, dropout_line, dropout_station)
        if pickup_line == dropout_line 
                trip = pickup_line.index(pickup_station)
                drop = dropout_line.index(dropout_station)
                until trip == drop +1
                    trips = pickup_line[trip]
                    trip = trip +1
                    $total_trip.push(trips)
                    end 
                    $total_stops.push($total_trip.length)
        else 
        trip1 = pickup_line.index(pickup_station)
        drop1 = dropout_line.index(dropout_station)
        trip_union = pickup_line.index("Union Square")
        drop_union = dropout_line.index("Union Square")
                    while trip1 < trip_union +1
                        $total_trip.push(pickup_line[trip1]) 
                        trip1 = trip1 +1 
                        break if trip1 == trip_union 
                    end 
                    $total_stops.push($total_trip.length)
                    while trip1 > trip_union +1
                        $total_trip.push(pickup_line[trip1])
                        trip1 = trip1 -1
                        break if trip1 == trip_union 
                    end 
                    $total_stops.push($total_trip.length)
                    while drop_union < drop1 +1
                        $total_trip.push(dropout_line[drop_union])
                        drop_union = drop_union + 1
                        break if drop_union == drop1
                    end 
                    $total_stops.push($total_trip.length)
                    while drop_union > drop1 +1
                        $total_trip.push(dropout_line[drop_union])
                        drop_union = drop_union - 1  
                        break if drop_union == drop1   
                    end 
                    $total_stops.push($total_trip.length)    
        end 
end 
   plan_trip(the_6_line,"Grand Central",the_l_line,"1st" )
   puts "#{$total_stops} stops in total.  "
   print "You must travel through the following stops on the : #{$total_trip}"

# // Output shows something similar to this:
# // "You must travel through the following stops on the N line: 34th, 28th, 23rd, Union Square."
# // "Change at Union Square."
# // "Your journey continues through the following stops: 23rd, 28th, 33rd."
# // "7 stops in total."

