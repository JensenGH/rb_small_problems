=begin

Problem:
- Write a method that takes a number as an argument. If the argument is a positive number, return
the negative of that number. If the number is 0 or negative, return the original number

Examples/ test cases:
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

Explicit requirements:
- If the input number is positive, return a negative version of that number.
- If the number is 0 or negative, return the original input number.

Implicit requirements:
- There is no such thing as -0

Data strucutre:
- The input is an integer. (could be positive, negative, or zero)
- The output is negative integer if the input number is positive, if the input is 0 or a negative
integer, return the original number. 

Algo:
- Create a method called 'negative'
- This method takes one argument, an integer that can be positive, negative, or zero.
- While using a ternary operator:
  - 1. Set the condition to if the num is greater then zero (a positive integer)
  - 2. If true, multiply the number by -1, otherwise return the original number.

=end

# Code

def negative(num)
  num > 0 ? num * -1 : num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0