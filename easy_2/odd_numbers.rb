=begin

Problem:
Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a seperate line

Understand the problem:
Print all odd numbers from 1 to 99, inclusive, to the console
Each odd number should be printed on a seperate line
Skip all even numbers from 1 to 99, inclusive, to the console
Input: Integer
Output: Integer

Explicit requirements:
Print all odd numbers from 1 to 99, inclusive
All numbers are printed on seprate lines

Implicit requirements:
If the integer is even, don't print the integer to the screen

Questions:
None

Data structure:
Input: Integer
Output: Integer

Algorithm:
From a range of 1 to 99, print all odd integers
Skip all even integers within the range of 1 to 99
Output each odd integer using puts

=end

# Code (original solution)

1.upto(99) { |num| puts num if num.odd?}

# Code with further exploration (solve the exercise using a different technique/ solution)

value = 1

until value > 99
  puts value
  value += 2
end