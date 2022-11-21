=begin

Problem:
Create a method that takes two agruments, multiplies them together, and returns the result.

Input: Two integers
Output: Boolean

Explicit requirements:
Method will take two arguments and multiply them together
Returns true if the two numbers multiplied are equal to the result, false otherwise.

Implicit requirements:
None

Questions:
None

Data structure:
Input: Two integers
Output: Boolean

Algorithm:
Create a method called 'multiply' that takes to input arugments
The input arguments must be integers
If the two integers multiplied together are equal to the result, print true. Otherwise, false.

=end

# Code

# def multiply(num1, num2)
#   num1 * num2
# end

# p multiply(5, 3) == 15
# p multiply(2, 7) == 14
# p multiply(5, 1) == 5
# p multiply(9, 8) == 72
# p multiply(2, 4) == 8
# p multiply(['hi', 'bye'], 2) == (['hi', 'bye', 'hi', 'bye'])

# Further exploration:
# When our first argument is an array an we are multiplying it by an integer, a new array is returned.
# The method will repeat the elements as many time as the integer indicates. 
# The repeated elements in the new array reference the same objects as the original.

x = ['hi', 'bye']
y = x * 2

p x # => ["hi", "bye"]
p y # => ["hi", "bye", "hi", "bye"]

y[3].upcase!

p x # => ["hi", "BYE"]
p y # => ["hi, "BYE", "hi", "BYE"]