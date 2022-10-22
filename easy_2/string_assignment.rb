=begin

Problem:
Take a look at the following code:

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

What does this code print out? Explain the results.

Answer:
On line 1, we create a variable called 'name' and store a string inside, 'Bob'.
On line 2, we create another variable called 'save_name' equal to the value of 'name'.
Now, both variables share the same object id, they are pointing to the same object.
On line 3, we call a destructive version of String #upcase on the variable 'name' which mutates
the string referenced by the variable 'name'. Since 'save_name is also pointing to the same object
it will mutate the value represented by 'save_name' as well.
On line 4, we output both variables, and both values will now have been mutated, keeping their
original object_ids.

=end

# Solution:
# BOB
# BOB

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