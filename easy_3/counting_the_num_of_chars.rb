=begin

Problem:
Write a program that will ask a user for an input of a word or multiple words and give back the number
of characters. Spaces should not be counted as a character.

Input:
Please write word or multiple words: walk
Please write word or multiple words: walk, don't run

Output:
There are 4 characters in "walk".
There are 13 characters in "walk, don't run"

Explicit requirements:
Input word could be one or multiple words
Return the number of characters from the given word or words
Spaces should not be counted as a character

Implicit requirements:
None

Questions:
None

Data structure:
Input: String
Output: Sentence describing how many charachters are within the input string.

Algorithm:
Ask the user for a word or multiple words
Store the input in a variable called 'input'
Create a variable called 'number_of_chars
- We can call gsub on our input
- We can then pass (/[^\w\s]/, '') to the #gsub method which removes whitespaces/ non-alphanumeric chars
Output result

=end

# Code

puts ">> Please write word or multiple words:"
input = gets.chomp
number_of_chars = input.gsub(/[^\w\s]/, '').size
puts ">> There are #{number_of_chars} characters in '#{input}'."