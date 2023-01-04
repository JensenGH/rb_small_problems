=begin

Problem:
- Write a program that will ask a user for an input of a word or multiple words and give back the number
of characters. Spaces should not be counted as a character.

Example input:
Please write word or multiple words: walk
Please write word or multiple words: walk, don't run

Example output:
There are 4 characters in "walk".
There are 13 characters in "walk, don't run".

Explicit requirements:
- Spaces should not be counted as a character.

Implicit requirements:
- Anything but spaces counts as a character.

Data structure:
- Using puts to output the message to the user
- Using gets to retrieve user input

Algo:
- Prompt the user for a word or multiple words
- Create a variable called 'input' and retrieve the input using #gets
- Create a variable called 'number_of_chars', the value of this variable is is the size of the
string with spaces removed.
- Output results to the user.

=end

# Code

puts ">> Please write word or multiple words:"
input = gets.chomp
number_of_chars = input.delete(' ').size
puts ">> There are #{number_of_chars} characters in '#{input}'."