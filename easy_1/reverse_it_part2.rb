=begin

Problem:
Write a method that takes one argument, a string containing one or more words, and returns the
given string with words that contain five or more characters reversed. Each string will consists
of only letters and spaces. Spaces should be included only when more than one word is present.

Understand the problem:
Create a method called 'reverse_words' that takes one string argument
If the word in the given string is five or more characters long, reverse the word
If the word is less then five characters long then the word remains the same
Spaces should be included only when more than one word is present
Input: String
Output: String

Explicit requirements:
If the word in the given string is five or more characters long, reverse the word
Spaces should be included only when more than one word is present

Implicit requirements:
If the word is less then five characters long then the word remains the same

Questions:
None

Data structure:
Input: String
Output: String

Algorithm:
Create a method called 'reverse_words'
The method takes one string argument
Initialize an empty array to put the string into a collection
If the element(word) in the collection is five or more characters long, reverse the word
If the element(word) is not five or more characters long, then don't reverse the word
Return a string by converting each element in the new array to a string, seperated by the given
separator e.g: 'element'.join(separator) using Array's #join method
Print result

=end

def reverse_words(string)
  reversed_string = []

  string.split.each do |word|
    if word.size >= 5
      word.reverse!
    end
    reversed_string << word
  end

  reversed_string.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS