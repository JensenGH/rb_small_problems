=begin

Problem:
- Write a program that prompts the user for two positive integers, and then prints the results of the
following operations on those two numbers: addition, subtraction, product, quotient, remainder, and
power. Do not worry about validating the input.

Example output:
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

Explicit requirements:
- The user must enter two positive integers
- The operations to be performed are addition, subtraction, multiplication, division, modulo, and
power.

Implicit requirements:
- None

Data structure:
- Use #puts to prompt the user for two integers/ output message to user
- Use #gets.to_i to retrieve the input from the user/ convert input from string to integer

Algo:
- Prompt the user for two positive integers integers
- Output the results of the following operations: addition, subtraction, division, multiplication,
modulo, power. 

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
quotient = num1 / num2
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