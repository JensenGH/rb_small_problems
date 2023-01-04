=begin

Problem:
- Write a method that returns true if the string passed as an argument is a palindrome, false otherwise.
A palindrome reads the same forward and backward. For this exercise, case matters as does puncuation
and spaces.

Examples/ test cases:
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

Explicit requirements:
- Return true if the string is equal to iteself reversed.
- Case matters as does punctuation/ spaces.

Implicit requirements:
- None.

Data structure:
- The input is a string
- The output is a boolean. Returns true if the string is equal to itself reversed, false otherwise.

Algo:
- Create a method named 'palindrome?'
- This method takes a string as an argument
- If the string is equal to itself reversed return true, False otherwise.

=end

# Code

# Idiomatic soltuion (works with strings and arrays)

def palindrome?(collection)
  collection == collection.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# Futher exploration
# Write a method that determines whether an array or a string is palindromic; that is, write a 
# method that can take either an array or a string argument, and determines whether that argument
# is a palindrome. You may not use an if, unless, or case statement or modifier.

def palindromic?(collection)
  reversed_collection = collection.class.new
  reverse_counter = collection.size - 1

  loop do
    break if reverse_counter == -1
    reversed_collection << collection[reverse_counter]
    reverse_counter -= 1
  end

  reversed_collection == collection.reverse
end

p palindromic?("Madam") #== false
p palindromic?("12321") #== true
p palindromic?([true, false, 'hello', false, true]) #== true
p palindromic?([true, nil, false, false, true]) #== false