=begin

Problem:
Write a method that takes one argument, a positive integer, and returns a list of the digits
in the number.

Understand the problem:
Write a method that takes one argument, a positive integer
Return a collection of those integers as elements in an array
Input: Integer
Output: Array

Explicit requirements:
Input argument must be a positive integer
Output is a collection of those integers as elements in an array

Implicit requirements:
If the test cases don't match, print false

Questions:
None

Data structure:
Input: Integer
Output: Array

Algorithm:
Create a method called 'digit_list' that accepts an argument (integer)
Initialize an empty array
Convert integers into a string, then split the string into an array
Each number string represents an element in the array
Iterate through the collection, converting each element back to an integer
Print result

=end

# Code

def digit_list(numbers)
  numbers = numbers.to_s.chars
  new_list = Array.new

  numbers.map do |num_str|
    num_str.to_i
  end
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
