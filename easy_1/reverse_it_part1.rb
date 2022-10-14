=begin

Problem:
Write a method that takes one argument, a string, and returns a new string with the words in
reverse order. The test examples should print true.

Understand the problem:
Create a method called 'reverse_sentence' that takes one argument (a string)
Reverse the given string, then return the new string
Any number of spaces results in ''
Input: String
Output: Boolean value

Explicit requirements:
Method takes one string argument
Return a new string with the words in reverse order
Any number of spaces results in ''
The test examples should print true

Implicit requirements:
If the test examples don't match, print false

Questions:
None

Data structure:
Input: String
Convert string to array to reverse word in collection, then convert back to string
Output: String

Algorithm:
Create a method called 'reverse_sentence'
Method takes one string argument
Split the string into a collection (array) to seperate each word
Iterate through the collection, reversing each word
Convert the reversed collection back to a string
Print result

=end

# Code

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''