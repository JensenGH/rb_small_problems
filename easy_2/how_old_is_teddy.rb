=begin

Problem:
- Build a program that randomly generates and prints Teddy's age. To get the age, you should
generate a random number between 20 and 200.

Examples output:
"Teddy is 69 years old!"

Explicit requirements:
- The random number that represents Teddy's age has to be between 20 and 200.

Implicit requirements:
- None.

Data structure:
- Using 'puts' to output a message to the user

Algo:
- Ask the user for their name.center
- Create a variable called 'name' and use 'gets' to take the user input and store the value into
the variable 'name'.
- Create a variable called 'age' and call Kernel #rand which when given a range, will randomly 
print a number between that range.
- For further exploration, if the name is empty then default to Teddy's name, otherwise use the
input name.

=end

puts ">> Hello! What's your name?"
name = gets.chomp
age = rand(20..200)

if name.empty?
  puts ">> Teddy is #{age} years old!"
else
  puts ">> #{name} is #{age} years old!"
end