=begin

Problem:
- Write a program that solicits 6 numbers from the user, then prints a message that describes whether
or not the 6th number appears amongst the first 5 numbers.

Example output:
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

Explicit requirements:
- Prompt the user for 6 numbers and print a message describing if the 6th number appears amongst
the first 5 numbers.

Implicit requirements:
- None

Data structure:
- Using an empty array to store the first five integers from the user
- Created a prompt method to make the code look a little more clean.
- Combining the Integer #times method with a case statement to retreive the first five numbers

Algo:
- Create a variable named 'first_five' = Array.new
- Create a method named 'prompt' so we don't have to use 'puts' everytime/ help make code look cleaner
- Using the #times method, since this method passes in integers starting from 0 up until 1 less then
the given number.
- While iterating the given block 5 times/ using a case statement:
  - When 0, ask for the first number. When 1, ask for the second..and so on until we reach our
  first five numbers.
- Prompt the user for a 6th number (last_num) and store the user input into a variable called 'last_num'
- Output the result

=end

# Code

first_five = []

def prompt(message)
  puts "==> #{message}"
end

5.times do |num|
  case num
  when 0
    prompt("Enter the 1st number:")
    first_five << gets.to_i
  when 1
    prompt("Enter the 2nd number:")
    first_five << gets.to_i
  when 2
    prompt("Enter the 3rd number:")
    first_five << gets.to_i
  when 3
    prompt("Enter the 4th number:")
    first_five << gets.to_i
  when 4
    prompt("Enter the 5th number:")
    first_five << gets.to_i
  end
end

puts "Enter the last number:"
last_num = gets.to_i

if first_five.include?(last_num)
  puts "The number #{last_num} appears in #{first_five}."
else
  puts "The number #{last_num} doesn't appear in #{first_five}."
end