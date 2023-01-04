=begin

Problem:
- Write a program that asks the user to enter an integer greater than 0, then asks if the user
wants to determine the sum or product of all numbers between 1 and the entered integer.

Example output:
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

Explicit requirements:
- The user must enter an integer greater than 0
- Display the sum or product of all numbers between 1 and the entered integer.

Implicit requirements:
- None

Data structure:
- Created two methods, one to compute the sum of the input and one to compute the product of the input
- Using loops to retrieve user input and break if the user enters invalid responses

Algo:
Method 1:
- Create a method called 'compute_sum'
- This method takes an integer greater than 0 as input
- Sum the integers from 1 up to the input number
Method 2:
- Create a method called 'compute_product'
- This method takes an integer greater than 0 as input
- Compute the integers from 1 up to the input number
Loop 1:
- Set the integer variable = '' so we can access it from within our loop
- Ask the user for an integer greater than 0
- Break if the integer is greater than 0
- Otherwise, output an error message to the user/ ask for another integer
Loop 2:
- Repeat the same steps as the first loop, except break from this loop if user enters 's' to compute
sum or 'p' to compute product.
- Otherwise output an error message and prompt the user for an operation to perform
- If the user enters 's', compute the sum and output the message to the user.
- If the user enters 'p'. compute the product and output the message to the user.
- Ask the user if they want to perform another operation (y to continue), break from the program 
if not.

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