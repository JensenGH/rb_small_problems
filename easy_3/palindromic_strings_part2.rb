=begin

Problem:
Write another method that returns true if the string passed as an argument is a palindrome, false otherwise.
This time, however, your method should be case-sensitive, and it should ignore all non-alphanumeric
characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the
previous exercise.

Examples/ test cases:
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

Questions:
1. How do we delete all non-alphanumeric characters?
- After searching google, i found that .gsub(/[^0-9a-z]/i, '') will do the trick.
- The expression /[^a-z]/i is a regex that matches any character that is not an uppercase or lowercase
letter. The /i part of the expression is what makes the expression case insensitive.

Input: String

Output: Boolean

Explicit requirements:
The method must return true if the string passed is a palindrome, false otherwise.
A palindrome reads the same forwards as backwards.
In this exercise, case does NOT matter and should ignore all non-alphanumeric characters.
You may call the the palindrome? method from previously.

Implicit requirements:
None

Data structure:
Input: String
Output: Boolean

Algorithm:
Define a method called 'palindrome?' that takes one argument, a string
If the given string is a palindrome, return true. Otherwise, return false.
A palindrome reads the same forward as it does backward.
The method should be case-insensitive and ignore all non-alphanumeric characters.

=end

# Code

def palindrome?(str)
  str == str.reverse
end

def real_palindrome?(str)
  str = str.downcase.gsub(/[^0-9a-z]/i, '')
  palindrome?(str)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false