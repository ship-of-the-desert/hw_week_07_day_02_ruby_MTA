 n_line = {
     :line => "n_line",
     :stops => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
     :intersection => "Union Square"
}

 l_line = {
     :line => "l_line",
     :stops => ["8th", "6th", "Union Square", "3rd", "1st"],
     :intersection => "Union Square"
}

 six_line = {
     :line => "six_line",
     :stops => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"],
     :intersection => "Union Square"
}

lines = [n_line, l_line, six_line]

def plan_trip (start_line, start_stop, end_line, end_stop)
    result = []

    start_index = start_line[:stops].index start_stop
    end_index = end_line[:stops].index end_stop
    start_intersection = start_line[:stops].index start_line[:intersection]
    end_intersection = end_line[:stops].index end_line[:intersection]


    if start_index > start_intersection
        start_index.downto(start_intersection).each do |i|
            result.push(start_line[:stops][i])
        end
    else
        (start_index..start_intersection).each do |i|
            result.push(start_line[:stops][i])
        end
    end

    if end_index > end_intersection
        end_index.downto(end_intersection+1).each do |i|
            result.push(end_line[:stops][i])
        end
    else
        (end_index..end_intersection-1).each do |i|
            result.push(end_line[:stops][i])
        end
    end


    return result
end

p plan_trip(n_line, "Times Square", six_line, "Astor Place")
