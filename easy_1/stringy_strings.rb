=begin

Problem:
Write a method that takes one argument, a positive integer, and returns a string of alternating
1s and 0s, always starting with 1. The length of the string should match the given integer. The
test examples provided should print true.

Understand the problem:
Create a method called 'stringy' that takes one integer argument
Integer argument must be positive
Return alternating 1s and 0s as a string, starting with 1
The string should match the given integer
Test examples should print true
Input: Integer
Output: String
Print result

Explicit requirements:
Input argument is a positive integer
Return alternating 1s and 0s, starting with 1
The length of the string should match the given integer
The tests should print true

Implicit requirements:
If the tests results do not match the given string, print false

Questions:
What happens when we pass a negative integer as an argument?

Data structure:
Input: Integer
Output: String

Algorithm:
Create a method called 'stringy' that takes one integer argument
Initialize an empty string
Iterate through the size of the given number by using #times method
If the number in the given index is even, print '1', else print '0'
Concat the empty string to the number strings
Print result
=end

# Code

def stringy(integer)
  num_str = String.new

  integer.times do |num|
    num_str.concat num.even? ? '1' : '0'
  end

  num_str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Code with further exploration (takes optional argument that defaults to 1)

=begin

Algorithm for further exploration:
Create a method called 'stringy' that takes two arguments
The two arguments are an integer and an optional argument that defaults to 1
Initialize an empty string
If the method is called with the optional argument set to 0, return a string of alternating
0s and 1s, starting with 0 instead of 1
Otherwise return a string of alternating 0s and 1s, starting with 1 instead of 0
Print result

=end

def stringy(integer, default = 1)
  num_str = ''
  
  if default == 1
    integer.times { |num| num_str.concat num.even? ? '1' : '0' }
  else
    integer.times { |num| num_str.concat num.even? ? '0' : '1' }
  end

  num_str
end

puts stringy(5) # => '10101'
puts stringy(8, 0) # => '01010101'