=begin

Problem:
- What does this code print out? Think about it for a moment before continuing.

Example code:
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

Algo:
- On line 1, we create a variable called name which holds a string object "Bob".
- On line 2, we create a second variable called save_name with the same value as the name variable.
- At this point both these variables are pointing to the same object.
- On line 3, we invoke the String #upcase! method, which permanently modifies the string into 
all capital letters.
- Since both name and save_name are pointing to the same object, if we destructively modify one
object, the other object also gets modified.
- Therefore the output for name and save_name, is the names "BOB" printed twice on seperate lines
since we use 'puts' to output the variables.

=end

# Before mutating the caller
name = 'Bob'
p name.object_id
puts name

save_name = name
p save_name.object_id
puts name

name.upcase!


# After mutating the caller
puts name.object_id
puts name

puts save_name.object_id
puts save_name