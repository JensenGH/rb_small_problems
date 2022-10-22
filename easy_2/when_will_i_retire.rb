=begin

Problem:
Build a program that displays when the user will retire and how many years she has to work
until retirement.

Understand the problem:
Prompt user for for their age
Ask the user what age they would like to retire
Display the current year and the year they would retire at
Display how many years are left until retirement
Use the Time class from the ruby core library
Input: String
Output: String

Explicit requirements:
Display when the user will retire and how many years she has to work till retirement
Use the Time class from the Ruby core library

Implicit requirements:
None

Questions:
None

Data structure:
Input: String
Output: String

Algorithm:
Ask user for their age
Convert age from string to integer
Store their age in a variable called 'age'
Ask the user what age they would like to retire
Convert retirement age from string to an integer
Store into a variable called 'retirement_age'
Display the current year and year the user would retire
Display how many years are left to go until retirement
Use the Time class from the ruby core library.

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