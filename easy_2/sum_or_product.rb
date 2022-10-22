=begin

Problem:
Write a program that asks the user to enter an integer greater than 0, then asks if the user
wants to determine the sum or product of all numbers between 1 and the entered integer.

Understand the problem:
Ask the user to enter a number greater then 0
If the user enters 's', then compute the sum between 1 and the entered integer
If the user enters 'p', then compute the product between 1 and the entered integer
Display result
Input: String, Integer
Output: String

Explicit requirements:
The user has to enter a number greater then 0
If the user types 's', compute the sum between 1 and the entered integer
If the user types 'p', compute the product between 1 and the entered integer

Implicit requirements:
None

Questions:
None

Data structure:
Input: String, Integer
Output: String
Loop # 1: Checks for a valid integer that is greater then 0
Loop # 2: Checks for a valid character input by the user
If statement: Used for conditional execution based on our criteria

Algorithm:
Create a method that will compute the sum of a given integer
Create a method that will compute the product of a given integer
# Loop 1:
Ask the user for an integer greater then 0
Store user input in a variable called 'integer' and convert from string to integer
Break if the integer is greater then 0, otherwise output error message
# Loop 2:
Ask the user to enter 's' or 'p' to compute the sum or product
Store the answer in a result called 'sum_or_product'
Break if the string includes 's' or 'p', otherwise output an error message
If sum_or_product == 's', compute the sum and output result
If sum_or_product == 'p', compute the product and output result
Else, output an error message.
Ask user if they want to compute another integer
Break if the user doesn't enter 'y' to continue.

=end

# Code with further exploration (using the inject method in our solution/ validating input)

def compute_sum(input)
  1.upto(input).inject { |sum, n| sum + n}
end

def compute_product(input)
  1.upto(input).inject { |product, n| product * n}
end

loop do
  integer = ''
  loop do
    puts ">> Please enter an integer greater than 0:"
    integer = gets.chomp.to_i

    break if integer > 0
    puts ">> Error! You must enter an integer greater than 0."
  end

  sum_or_product = ''
  loop do
    puts ">> Please enter 's' to compute the sum, or 'p' to compute the product."
    sum_or_product = gets.chomp

    break if sum_or_product.include?('s') || sum_or_product.include?('p')
    puts ">> Error! You must enter 's' or 'p' to compute an integer."
  end
  
  if sum_or_product == 's'
    sum = compute_sum(integer)
    puts ">> The sum of the integers between 1 and #{integer} is #{sum}."
  elsif sum_or_product == 'p'
    product = compute_product(integer)
    puts ">> The product of the integers between 1 and #{integer} is #{product}."
  else
    puts ">> Error! You must enter 's' or 'p' to compute the integer."
  end
  
  puts ">> Do you want to compute another integer? ('y' to continue)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end