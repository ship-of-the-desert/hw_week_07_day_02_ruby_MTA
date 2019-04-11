# MTA Puzzle
# created hash for all lines
$planed_trip = {
n_line: ['Times Square', '34th', 'n28th', '23rd', 'Union Square', '8th'],
l_line: [ '8th', '6th', 'Union Square', '3rd', '1st'],
s_line: [ 'Grand Central', '33rd', '28th', '23rd', 'Union Square', 'Astor Place']
}

# first step: find arrival line and stop
# second step: find destination line and stop
# second and a half step: print change on union cross
# third step: find number of stops between arrival and destination
# fourth step: display all that into console

$stopCount = [];
# create function that measure the length of stop count array
def countStop
  puts $stopCount.length-4 + " stops in total.";
end
# the main function of the program
def trip
    puts ("You must travel through the following stops on the N Line:")
    puts ($planed_trip[:n_line].slice(0, 5));
# for loop to count the elements in the array and pushes them to the stop count array
    for i in i < $planed_trip[:n_line].length
         count = $stopCount.push($planed_trip[:n_line][i]);
# checks for the union intersection and enters the next array
      if($planed_trip[:n_line][i] == 'Union Square')
        puts "Change at Union Square";
            for i in i..$planed_trip[:l_line].length
                count = $stopCount.push($planed_trip[:l_line][i]);
            end
        puts ("Your journey continues through the following stops:")
        puts $planed_trip[:l_line].slice(0,2);
    end
    puts countStop
end
end
# calls the main function
puts trip