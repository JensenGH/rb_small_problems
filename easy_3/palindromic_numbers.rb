=begin

Problem:
- Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic
number reads the same forwards as it does backwards.

Examples/ test cases:
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

Explicit requirements:
- Return true if the integer argument is plaindromic, false otherwise.

Implicit requirements:
- None.

Data structure:
- The input is an integer
- The output is a boolean depending on whether the integer is equal to itself reversed

Algo:
- Create a method called 'palindromic_number?'
- This method takes an integer or integers as an argument.
- Convert the integers into a string of integers, and check if it's equal to itself reversed.

Integer#digits returns the original integers as an array of digits in reverse order
Array#join returns a string by converting each element into a string

=end

# Code

def palindromic_number?(num)
  num.to_s == num.digits.join
end


p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true