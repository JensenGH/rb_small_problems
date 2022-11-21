=begin

Problem:
Write a method that returns true if the string passed as an argument is a palindrome, false otherwise.
A palindrome reads the same forward and backward. For this exercise, case matters as does puncuation
and spaces.

Examples/ test cases:
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

Questions:
None

Input: String

Output: True if the string passed as an argument is a palindrome, false otherwise.

Explicit requirements:
The method must return true if the string passed is a palindrome, false otherwise.
A palindrome reads the same forwards as backwards.
In this exercise, case matters and so does puncuation/ spaces.

Implicit requirements:
None

Data structure:
Input: String
Output: Boolean

Algorithm:
Define a method called 'palindrome?' that takes one argument, a string
If the given string is a palindrome, return true. Otherwise, return false.
A palindrome reads the same forward as it does backward.

=end

# Code

# Solution 1 (string)

def palindrome?(str)
  if str == str.reverse
    true
  else
    false
  end
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# Solution 2 (array)

def palindrome_array?(array)
  array == array.reverse
end

p palindrome_array?([1, 2, 3, 2, 1]) == true
p palindrome_array?([2, 0, 1, 3, 4]) == false
p palindrome_array?([5, 2, 3, 1, 7]) == false
p palindrome_array?([6, 3, 1, 3, 6]) == true

# Further exploration
# Write a method that determines if an array is palindromic
# - the element values appear in the same sequence both forwards/ backwards
# Write a method that determines whether a string or array is palindromic
# - can take an array or string as an argument, and determine whether that argument is a palindrome
# We cannot use an if, unless, or case statement or modifier.

# Brute force solution

def is_palindromic?(collection)
  reverse_collection = collection.class.new
  counter = collection.size - 1

  until reverse_collection.size == collection.size
    reverse_collection << collection[counter]

    counter -= 1
  end

  reverse_collection == collection
end

p is_palindromic?('mom') == true
p is_palindromic?('Dad') == false
p is_palindromic?([1, 2, 3, 4, 5]) == false
p is_palindromic?([1, 3, 1, 3, 1]) == true


