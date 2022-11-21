=begin

Problem:
Write a program that prompts the user for two positive integers, and then prints the results of the
following operations on those two numbers: addition, subtraction, product, quotient, remainder, and
power. Do not worry about validating the input.

Input: Two positive integers
Ouput: The result of the following operations on those two numbers: (addition, subtraction, product, 
quotient, remainder, and power)

Explicit requirements:
User must only input two positive integers
Return the results for the addition, subtraction, product, quotient, remainder, and
power operations.

Implicit requirements:

Questions:

Data structure:
Input: Two positive integers
Output: The result of following the addition, subtraction, product, quotient, remainder, and
power operations on our two input numbers.

Algorithm:
Ask the user for two input arguments
Input arguments are two positive integers
Create a variable called 'addition' and store the result of that operation into the variable
Create a variable called 'subtraction' and store the result of that operation into the variable
Create a variable called 'product' and store the result of that operation into the variable
Create a variable called 'quotient' and store the result of that operation into the variable
Create a variable called 'remainder' and store the result of that operation into the variable
Create a variable called 'power' and store the result of that operation into the variable
Print the results of all operations.
=end

# Code (Decided to create variables for each operation)

# Ask the user for two integers
puts ">> Enter the first number:"
num1 = gets.to_i
puts ">> Enter the second number:"
num2 = gets.to_i

# Our operations to be performed
addition = num1 + num2
subtraction = num1 - num2
product = num1 * num2
quotient = num1 / num2 # if second integer is 0, returns ZeroDivisionError
                        # when converted to floats/ second integer is 0, returns Infinity
remainder = num1 % num2
power = num1 **  num2

# Outputting our result

puts "#{num1} + #{num2} = #{addition}"
puts "#{num1} - #{num2} = #{subtraction}"
puts "#{num1} * #{num2} = #{product}"
puts "#{num1} / #{num2} = #{quotient}"
puts "#{num1} % #{num2} = #{remainder}"
puts "#{num1} ** #{num2} = #{power}"

# Further exploration
# Write a solution to deal with the second number being 0.

# Algorithm:
# Create a variable called 'num1' equal to nil. This is to access our variable inside our loop
# Create a loop and ask the user for the first number
# Store the first number in the variable called 'num1'
# Break from the first loop

# Create a second loop
# Initialize a 'num2' variable outside the second loop equal to 'nil'
# Ask the user for a second number and store inside the 'num2' variable
# Break from the loop if the number is NOT 0
# Output an error message if the second number is 0
# Prompt user for another number if the second number is 0
# Output the results of performing our operations on the two input numbers

num1 = nil
loop do
  puts ">> Enter the first number:"
  num1 = gets.to_i
  break
end

num2 = nil
loop do
  puts ">> Enter the second number:"
  num2 = gets.to_i
  break if num2 != 0
  puts ">> Our second integer cannot be 0! Try again."
end

puts "#{num1} + #{num2} = #{num1 + num2}"
puts "#{num1} - #{num2} = #{num1 - num2}"
puts "#{num1} * #{num2} = #{num1 * num2}"
puts "#{num1} / #{num2} = #{num1.to_f / num2.to_f}"
puts "#{num1} % #{num2} = #{num1 % num2}"
puts "#{num1} ** #{num2} = #{num1 ** num2}"