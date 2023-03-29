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

Explicit requirements:
- The method should be case-insensitive and ignore all non-alphanumeric characters.

Implicit requirements:
- None

Data structure:
- The input is a string
- The output is a boolean. True if the string is equal to itself reversed, false otherwise.

Algo:
- Create a method named 'real_palindrome?'
- This method takes a string as an argument
- Create a variable called 'string' for reassignment
  - Reassign string to itself and call #downcase/ delete all non-alphanumeric characters.
- Compare the string to itself reversed

=end

# Code

def palindrome?(str)
  str == str.reverse
end

def real_palindrome?(str)
  str = str.downcase.delete('^a-z0-9') # deletes anything that isn't a letter or digit.
  palindrome?(str)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false