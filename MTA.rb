#Train Lines as Arrays
$subway= {
    "N" => ["Times Square", "34th", "N-28th", "N-23rd", "Union Square", "N-8th"],
    "L" => ["L-8th", "6th", "Union Square", "3rd", "1st"],
    "Six" => ["Grand Central", "33rd", "6-28th", "6-23rd", "Union Square", "Astor Place"]
}

def printTrip(trip, onLine, offLine)
    result= "You must travel through the following stops on the #{onLine} line: "
    if onLine == offLine
        i = 0
        until i==trip.length
            if i==trip.length-1
                result += "#{trip[i]}."
            else
                result += "#{trip[i]}, "
            end
            i+=1
        end
        p result
    else
        i= 0
        until i == trip.index('Union Square')+1
            if i==trip.index('Union Square')
                result += "#{trip[i]}."
            else
                result += "#{trip[i]}, "
            end
            i+=1
        end
        p result
        p "Change at Union Square."
        result= "Your journey continues through the following stops: "
        j= trip.index('Union Square')+1
        until j == trip.length
            if j==trip.length-1
                result += "#{trip[j]}."
            else
                result += "#{trip[j]}, "
            end
            j+=1
        end
        p result
    end
    p "#{trip.length} stops in total."
end

def planTrip(onLine, onStop, offLine, offStop)
    trip= [] #Store the full trip
    on= $subway[onLine].index(onStop)+1 #index of on stop +1
    off= $subway[offLine].index(offStop) #index of off stop +1

    #if One Line
    if (onLine == offLine)
        #if forward
        if on < off
            until on == off+1 #loop through the online array until reaching the off stop
                trip << $subway[onLine][on]
                on+=1
            end
            printTrip(trip, onLine, offLine)
        else #if backwards
            on= on-1 #index of on stop +1
            until on == off
                trip << $subway[onLine][on-1]
                on-=1
            end
            printTrip(trip, onLine, offLine)
        end
    else #if Two Lines

        unionOff= $subway[offLine].index("Union Square")
        
        if on < $subway[onLine].index('Union Square') #if on forwards   
            if off > unionOff #if off forwards
                until on == $subway[onLine].index("Union Square")
                    trip << $subway[onLine][on]
                    on += 1
                end
                until unionOff == off+1
                    trip << $subway[offLine][unionOff]
                    unionOff += 1
                end
                printTrip(trip, onLine, offLine)
            elsif off < unionOff #if off backwards
                until on == $subway[onLine].index("Union Square")
                    trip << $subway[onLine][on]
                    on += 1
                end
                until unionOff == off-1
                    trip << $subway[offLine][unionOff]
                    unionOff -= 1
                end
                printTrip(trip, onLine, offLine)
            end

        else #if on backwards
            #if off backwards
            if off < unionOff
                on= on-2
                until on == $subway[onLine].index("Union Square")
                    trip << $subway[onLine][on]
                    on -= 1
                end
                until unionOff == off-1
                    trip << $subway[offLine][unionOff]
                    unionOff -= 1
                end
                printTrip(trip, onLine, offLine)
            elsif off > unionOff #if off forwards
                on= on-2
                until on == $subway[onLine].index("Union Square")
                    trip << $subway[onLine][on]
                    on -= 1
                end
                until unionOff == off+1
                    trip << $subway[offLine][unionOff]
                    unionOff += 1
                end
                printTrip(trip, onLine, offLine)
            end
            
        end
    end    
end

planTrip("N", "Times Square", "N", "N-23rd") #forwards
# planTrip("Six", "Union Square", "Six", "Grand Central") #backwards


# planTrip("N", "Times Square", "Six", "Astor Place") #both forwards
# planTrip("N", "Times Square", "L", "L-8th") #on forwards off backwards
# planTrip("L", "1st", "Six", "Grand Central") #both backwards
# planTrip("L", "1st", "Six", "Astor Place") #on backwards off forwards
