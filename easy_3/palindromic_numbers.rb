=begin

Problem:
Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic
number reads the same forwards as it does backwards.

Input: Integer
Output: Boolean

Explicit requirements:
If the integer argument is a palindrome, return true. Otherwise, false.
A palindrome reads the same forwards as it does backwards.
According to the description there are no rules about case-sensitivity/ non-alphanumeric characters.

Implicit requirements:
The Integer Class does not have a #reverse method, therefore you must convert input to a string before
calling this method.

Questions:
None

Data structure:
Input: Integer
Output: Boolean

Algorithm for solution 1:
Create a method called 'palindromic_number?' that takes one input argument
Input argument is a number (small or large)
Convert numbers to a string
If the number string is equal to itself reversed, return true. Otherwise return false.

=end

# Code

# Solution 1

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

# Algorithm for solution 2:
# Create a method called 'palindromic_numbers' that takes one input argument
# Input argument is a number
# Convert the number into an array, where each seperate integer is it's own element in the array
# If the array of numbers is equal to itself backwards, print true. Otherwise print false.

# Solution 2

def palindromic_number?(num) # Digits method returns a new array containing self's elements in reverse order.
  p num.digits == num.digits.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
p palindromic_number?(0123210) == true
p palindromic_number?(002200) == true

# Further exploration
# If an integer has a leading 0 or 0s at the beginning, it doesn't convert to a string properly.

# Example:
001232100.to_s # => "341056"