=begin

Problem:
Write a program that will ask for the user's name. The program will then greet the user. If the
user writes "name!" then the computer yells back to the user.

Understand the problem:
Ask the user for their name
Greet the user
IF the user types their name in like "name!"
Output a message that yells back to the user
Input: String
Output: String

Explicit requirements:
If the user writes their name like "name!", then the computer must yell back to the user

Implicit requirements:
If the user does not write their name like "name!", simply greet the user without yelling

Questions:
None

Data structure:
Input: String
Output: String

Algorithm:
Ask the user for their name
Store their name into a variable called 'name' using #gets and #chomp
IF the user types their name w/o an exclamation mark, then greet the user
IF the user uses writes their name with an exclamation mark, then yell back to the user

=end

# Code

puts ">> What is your name?"
name = gets.chomp

if name.end_with?('!')
  puts ">> HELLO #{name.upcase} WHY ARE WE SCREAMING?"
else
  puts ">> Hello, #{name}."
end

# Code with further exploration (using #chomp and #chop)

def chop(name)
  if name[-1] == '!' then name.chop!
  end
end

puts ">> Hello, what's your name?"
name = gets.chomp

if chop(name)
  puts ">> HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts ">> Hello, #{name}."
end
