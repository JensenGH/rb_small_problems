=begin

Problem:
Write a method that takes one argument, a positive integer, and returns the sum of its digits.
Try without using basic looping constructs (while, until, loop, and each.)

Understand the problem:
Create a method that takes one argument, a positive integer
Return the sum of its digits
If the test cases are correct, print true, otherwise false
Try not to use basic looping constructs such as while, until, loop, and each

Explicit requirements:
Argument must be a positive integer
The test cases should print true

Implicit requirements:
If the test cases don't match, print false

Questions:
None

Data structure:
Input: Integer
Output: Boolean

Algorithm:
Create a method called 'sum' that takes one argument, a positive integer
Initialize variable called 'sum' and set equal to 0
Convert given integer to a string using to_s, then call chars to convert to an array
Iterate over the array and on each iteration, increment each element converted back to an integer
Print result

=end

def sum(integer)
  sum = 0
  integer = integer.to_s.chars # e.g => ["2", "3"]

  integer.each do |num| # Iterate through each number string(element) in the array
    sum += num.to_i # convert elements to integers, add them up and assign to 'sum'
  end

  sum # return value
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45