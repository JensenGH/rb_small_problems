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
- Create a variable alpha_str equal to an empty string
- If any characters within our input string are uppercase, append them to alpha_str
- Compare if input string is equal to alpha_str, returns true if all characters are uppercase,
  otherwise false.

=end

# Code

def uppercase?(input_str)
  alpha_str = ''
  input_str.chars.select do |char|
    if char == char.upcase
      alpha_str << char
    end
  end
  input_str == alpha_str
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true


# Further exploration:
# In Ruby, everything is considered truthy except for false and nil. With this knowledge, I would
# say that even if a String object is empty, the String itself is still considered truthy. You can
# test this in IRB:
# empty_str = "" => ""
# !!empty_str => true
# !empty_str => false
# Calling !!(object) will turn an object into it's boolean value. As you can see this returns true
# since the empty string is considered truthy.
# Calling !(object) will turn an object into it's boolean negate. (the opposite of it's boolean value)