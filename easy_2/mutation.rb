array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo) # Initialize our first array
array2 = [] # Initialize an second array that's empty
array1.each { |value| array2 << value } # Appending the values (elements) from array1 to array2
array1.each { |value| value.upcase! if value.start_with?('C', 'S')} # upcase if element starts with 'C' or 'S'
puts array2 # Since array1 and array2 share the same values/ string objects, both arrays are mutated.

# What will the code above print, and why? Don't run the code until you've tried to answer.

=begin

On line 1, we create an array of strings and store it inside a variable called 'array1'
On line 2, we create an empty array called 'array2'
On line 3, we iterate through 'array1', appending each element (value) to 'array2'
On line 4, we iterate through 'array1' again, this time calling String #upcase! on any value
in 'array1' that starts with 'C' or 'S'
Since we copied references from array1 and appended them to array2, they actually share the same
values/ string objects
When we output 'array2' we see the same mutations that we do from array1. 
Since we use puts to output our array, each element is printed on a new line.

=end