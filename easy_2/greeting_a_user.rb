=begin

Problem:
- Write a program that will ask for the user's name. The program will then greet the user. If the
user writes "name!" then the computer yells back to the user.

Example output:
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

Explicit requirements:
- If the user uses an exclamation mark at the end of their name, yell back to the user in all caps.

Implicit requirements:
- None

Data structure:
- The input is a string

Algo:
- Ask the user for their name
- Create a variable called 'name' and store the input inside.
- If the name ends with an '!' then yell back to the user in all caps, otherwise greet the user
without using all caps.

=end

# Code

puts ">> What is your name?"
name = gets.chomp

if name.end_with?('!')
  puts ">> HELLO #{name.upcase} WHY ARE WE SCREAMING?"
else
  puts ">> Hello, #{name}."
end

# Code with further exploration (using String #chop)

puts ">> Hello, what's your name?"
name = gets.chomp

if name[-1] == '!' then name.chop!
  puts ">> HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts ">> Hello, #{name}."
end
