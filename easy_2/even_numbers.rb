=begin

Problem:
Print all even numbers from 1 to 99, inclusive, to the console, with each number on a seperate line

Understand the problem:
Print all even numbers from 1 to 99, inclusive, to the console
Each even number should be printed on a seperate line
Skip all odd numbers from 1 to 99, inclusive, to the console.
Input: Integer
Output: Integer

Explicit requirements:
Print all even numbers from 1 to 99, inclusive
All numbers are printed on seprate lines

Implicit requirements:
If the integer is odd, don't print the integer to the screen.

Questions:
None

Data structure:
Input: Integer
Output: Integer

Algorithm:
From a range of 1 to 99, print all even integers
Skip all odd integers within the range of 1 to 99
Output each even integer using puts

=end

# Code

1.upto(99) { |num| puts num if num.even?}