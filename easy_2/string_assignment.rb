name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# What does this print out? Explain the results:

# When we invoke the Kernel#puts method on line 4 while passing name and save_name as arguments,
# The string 'BOB' will be output one time on two seperate lines. This is an example of variables
# as pointers. When we initialize save_name equal to name, these two variables now point to the same
# string object. When we invoke String#upcase! on line 3, this destruvtive method mutates the object
# it is called on which is an example of pass by reference. When we pass by reference, we are mutating
# the calling object rather than reassigning it to a new object. Therefore when we invoke this 
# method on name, save_name is also mutated.