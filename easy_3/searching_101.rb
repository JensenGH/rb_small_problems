=begin

Problem:
Write a program that solicits 6 numbers from the user, then prints a message that describes whether
or not the 6th number appears amongst the first 5 numbers.

Input: Integer

Output: String displaying which number does or does NOT appear within the collection (Array)

Explicit requirements:
Solicit 6 numbers from the user
Display if the 6th number appears amongst the first 5 numbers
Output is a string displaying if the 6th number appears in the array or not.

Implicit requirements:
None

Questions:

Data Structure:
Input: Integer (6 total)
Output: String that displays which number appears within the collection (Array)
Other: An array to store our first five numbers, then compare it to our 6th integer.

Algorithm:
Create an empty array to store our first five elements
Create a counter variable with the value of 1
Create an until loop that only breaks when the array contains five elements
Use a case statement to prompt the user for the first five numbers
Append the first five input integers into an empty array and end loop
Prompt the user for a sixth number and store in a variable called 'last_num'
Print result describing whether the 6th number appears within the first five numbers or not.
- E.g. "The number 17 appears in [25, 15, 20, 17, 23]."

=end

# Code

first_five = []
counter = 1

until first_five.size == 5
  case counter
  when 1
    puts "Enter the 1st number:"
    first_five << gets.to_i
  when 2
    puts "Enter the 2nd number:"
    first_five << gets.to_i
  when 3
    puts "Enter the 3rd number:"
    first_five << gets.to_i
  when 4
    puts "Enter the 4th number:"
    first_five << gets.to_i
  when 5
    puts "Enter the 5th number:"
    first_five << gets.to_i
  end

  counter += 1
end

puts "Enter the last number:"
last_num = gets.to_i

if first_five.include?(last_num)
  puts "The number #{last_num} appears in #{first_five}."
else
  puts "The number #{last_num} does not appear in #{first_five}."
end