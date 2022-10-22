=begin

Problem:
Build a program that randomly generates and prints Teddy's age. To get the age, you should
generate a random number between 20 and 200.

Understand the problem:
Randomly generate and print Teddy's age.
To get the age, generate a random number between 20 and 200.
Print result as a sentence string 
Input: String
Output: String 
Example: "Teddy is 'random number' years old!"

Explicit requirements:
To get the age, generate a random number between 20 and 200

Implicit requirements:
None

Questions:
None

Data structure:
Input: String
Output: String

Algorithm:
Create a variable called 'age' that is equal to calling Kernel's #rand method
#rand takes one argument, in this case a range between 20 and 200.
Print result

=end

# Code

#age = rand(20..200)
#puts "Teddy is #{age} years old!"

# Code with further exploration


=begin

# Algorithm for further exploration:
Greet the user and ask for their name
store their name into a variable called 'name'
Create a variable called 'age' equal to Kernel #rand with a range of 20..200
If the name is empty, print "Teddy is 'age' years old!"
ELSE print "#{your name} is 'age' years old!"

=end

puts ">> Hello! What's your name?"
name = gets.chomp
age = rand(20..200)

if name.empty?
  puts ">> Teddy is #{age} years old!"
else
  puts ">> #{name} is #{age} years old!"
end