=begin

Problem:
- Build a program that displays when the user will retire and how many years she has to work
until retirement.

Example output:
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

Explicit requirements:
- Display when the user will retire and how many years are left of work until retirement.

Implicit requirements:
- None

Data structure:
- The input for 'age' and 'retirement_age' are both integers.

Algo:
- Ask the user for their age. Store their age into a variable called 'age'. Conver input to integer
- Ask what age the user would like to retire at. Store age into a variable called 'retirement_age'
and convert input to an integer.
- Create a variable called 'current_year' and called Time.now.year to display the current year
- Create a variable called 'years_left. (retirement_age - age)
- Create a variable called retirement_year (current_year + years_left)
- Output the results

=end

puts ">> What is your age?"
age = gets.chomp.to_i

puts ">> At what age would you like to retire at?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year # Displays the current year
years_left = retirement_age - age # Displays the number of years until retirement
retirement_year = current_year + years_left # Displays the year of retirement

puts ">> It's #{current_year}. You will retire in #{retirement_year}."
puts ">> You only have #{years_left} years of work to go!"