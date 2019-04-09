# MTA Puzzle

- Recreate your MTA subway system with Ruby.

- The program takes the line and stop that a user is getting on at and the line
  and stop that user is getting off at and prints the journey and the total number of stops for the trip in the console:

```ruby
planTrip("N", "Times Square", "6", "33rd"); 
plan_trip( :n, "Times Square", :l, "Grand Central" )
// This is only a suggested function name and signature.

// Output shows something similar to this:
// "You must travel through the following stops on the N line: 34th, 28th, 23rd, Union Square."
// "Change at Union Square."
// "Your journey continues through the following stops: 23rd, 28th, 33rd."
// "7 stops in total."

```

- There are 3 subway lines:
  - The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
  - The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
  - The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
  - All 3 subway lines intersect at Union Square, but there are no other intersection points. (For example, this means the 28th stop on the N line is different than the 28th street stop on the 6 line, so you'll have to differentiate this when you name your stops in the arrays.)
- Tell the user the number of stops AND the stops IN ORDER that they will pass through or change at.

### Hints:

- Work out how you would do it on paper first! Then start to explain that process in Ruby.
- Focus on **a single line** before trying to tackle multiple lines!!
  - Hint: A multiple line trip could be considered two single line trips
- Don't worry about prompting the user for input. Hard code some values to get it working. You can use `gets` later, if you want, to make it more interactive.
- Consider drawing the lines by sketching out the subway lines and their stops and intersection.
- The key to the lab is finding the index positions of each stop. (hint: `.index()` and `.include?()`)


## Reminder
Remember to submit a pull request to our class repository with your work by 9 am! Need a reminder on how to submit? Check out the instructions on how to submit homework in our class Wiki ([located on our class Github](https://github.com/ship-of-the-desert/homework_submission_steps))