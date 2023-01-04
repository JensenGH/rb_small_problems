=begin

Problem:
- Create a method that takes two agruments, multiplies them together, and returns the result.

Examples/ test cases:
multiply(5, 3) == 15
multiply(10, 5) == 50
multiply(-8, -8) == 64

Explicit requirements:
- Multiply the two input integers and return the result 

Implicit requirements:
- None

Data structure:
- The input is two integers. The problem does not state that the integers can't be positive, negative,
or zero.

Algo:
- Create a method named 'multiply'
- This method takes two integers as arguments
- Multiply the two integers and output the result

=end

# Code

def multiply(num1, num2)
  num1 * num2
end

p multiply(5, 3) == 15
p multiply(10, 5) == 50
p multiply(-8, -8) == 64


# Further exploration:
# When our first argument is an array an we are multiplying it by an integer, a new array is returned.
# The method will repeat the elements as many times as the integer indicates. 
# The repeated elements in the new array reference the same objects as the original.

x = ['hi', 'bye']
y = x * 2

p x # => ["hi", "bye"]
p y # => ["hi", "bye", "hi", "bye"]

y[3].upcase!

p x # => ["hi", "BYE"]
p y # => ["hi, "BYE", "hi", "BYE"]