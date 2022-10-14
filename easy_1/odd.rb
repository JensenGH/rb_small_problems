=begin

Problem:
Write a method that takes one integer argument, which may be positive, negative, or zero. This
method returns true if the number's absolute value is odd. You may assume that the argument is
a valid integer value.

Understand the problem:
Write a method that takes one argument
Input argument is an integer; may be positive, negative, or zero
We may assume that the argument is always a valid integer
Output is a boolean value.
Print true if number's absolute value is odd, otherwise false

Explicit requirements:
Integer can be positive, negative, or zero
Assume that the argument is always a valid integer
Print true if the argument's absolute value is odd
We're not allowed to use #odd? or #even? methods

Implicit requirements:
If the argument's absolute value isn't odd, print false

Questions:
None

Data Structure:
Input: Integer
Output: Boolean value

Algorithm:
Create a method called 'is_odd?' that accepts one input argument
Input argument is a valid integer
Check to see if the input arguemnt's absolute value is odd
If it is then print true, otherwise print false

=end

# Code with further exploration

def is_odd?(integer)
  integer % 5.remainder(3) == 1 # if integer % 2 == 1, prints true
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)