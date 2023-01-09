=begin

Problem:
- Write a method that takes a string argument, and returns true if all of the alphabetic characters
inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

Examples/ test cases:
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

Explicit requirements:
- Return true if all characters in the string are uppercase, false otherwise.
- Ignore characters that are not alphabetic.

Implicit requirements:
- None

Data structure:
- The input is a string of characters
- The output is a boolean value (true or false) depending on whether the input string is all
uppercase or not.

Algo:
- Create a method named 'uppercase?'
- This method takes one string as an argument
- Reassign string to to itself, but delete any character that isn't alphabetic.
- Using a ternary operator:
  - If the string contains all uppercase characters then print true, false otherwise.

=end

# Code
# Since we want to ignore any character that isn't alphabetic, I decided to remove numbers and
# punctuation from the input string.

def uppercase?(string)
  string = string.delete('0-9!#$%&')
  string.upcase ? true : false
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true