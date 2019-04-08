
$plan_trip ={
    n: ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
    l: ["8th","6th", "Union Square","3rd","1st"],
    six: ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}

# on line function
    def onLine(firstLine)
        stops = $plan_trip[firstLine]
return "You must travel through the following stops on the #{firstLine} line:#{stops}"
end

#2 lines function
     def planTrip (firstLine,firstStop,secondLine,lastStop)
            p "Change at Union Square."
    afterStops = $plan_trip[secondLine].index("Union Square") + 1 
    stop = $plan_trip[:l][afterStops]
            p "Your journey continues through the following stops: #{stop}."
           countTotal = $plan_trip[firstLine].index("Union Square") + 1 
            total = afterStops + countTotal
            p "#{total} stops in total."
end
p onLine(:n)
p planTrip( :n, "Times Square", :l, "Grand Central" )

