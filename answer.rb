$train={
    :n => ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th'],
    :l =>['8th', '6th', 'Union Square', '3rd', '1st'],
    :six =>['Grand Central', '33rd', '28th', '23rd', 'Union Square', 'Astor Place']
}

def plan_trip(l1,t1,l2,t2)
    if l1==l2
        start=$train[l1].find_index(t1)
        stop=$train[l1].find_index(t2)
        trip=$train[l1].slice(start+1,stop)
        p "You must travel through the following stops on the #{l1.upcase} line: #{trip.join(', ')}."
        p "#{trip.length} stops in total."
    else 
        start=$train[l1].find_index(t1)
        switch1=$train[l1].find_index('Union Square')
        switch2=$train[l2].find_index('Union Square')
        stop=$train[l2].find_index(t2)
        if $train[l1].find_index(t1)<$train[l1].find_index('Union Square')
            trip1=$train[l1].slice(start+1,switch1)
        else
            trip1=$train[l1].slice(switch1,start-1)
        end
        if $train[l2].find_index(t2)<$train[l2].find_index('Union Square')
            trip2=$train[l2].slice(stop,switch2-1).reverse
        else
            trip2=$train[l2].slice(switch2+1,stop)
        end
        p "You must travel through the following stops on the #{l1.upcase} line: #{trip1.join(', ')}."
        p "Change at Union Square."
        p "Your journey continues through the following stops: #{trip2.join(', ')}."
        p "#{trip1.length+trip2.length} stops in total."
    end
end

plan_trip( :n, "Times Square", :six, "Astor Place" )