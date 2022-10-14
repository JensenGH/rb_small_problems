=begin

Problem:
Write a method that takes one argument, an array containing integers, and returns the average
of all numbers in the array. The array will never be empty and the numbers will always be
positive integers. Your result should also be an integer. The test examples should print true.

Understand the problem:
Create a method called 'average' that takes one argument
The argument passed in is an array containing integers as elements
We need to add all numbers in the array to find the sum
Divide the sum by the number of elements to find the average of all numbers in the array
Print result
Input: Array
Output: Integer, prints true if test cases match

Explicit requirements:
The argument passed to the method will be an array containing integers
Return the sum of all numbers in the array
The array will never be empty
The integers in the array will always be positive
Your result should be an integer

Implicit requirements:
If test cases do not match, print false

Questions:
None

Data structure:
Input: Array containing integers
Output: Integer

Algorithm:
Create a method called 'average' that takes one argument (array of integers)
Intialize a sum variable equal to 0
Iterate through the array, incrementing the number elements into sum
Divide the sum by the number of elements within the array
Print result

=end

# Code with further exploration (return value is now a float)

def average(array)
  size = array.size
  sum = 0

  array.each do |num|
    sum += num # sum = sum + num, iterates through the array
  end

  (sum.to_f / size).round(2)
end # convert integer to a float for an accurate result. Rounded to nearest tenth

puts average([1, 6]) == 3.5 # => true
puts average([1, 5, 87, 45, 8, 8]) == 25.67 # => true
puts average([9, 47, 23, 95, 16, 52]) == 40.33 # => true