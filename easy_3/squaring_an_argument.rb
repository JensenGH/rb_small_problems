=begin

Problem:
- Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes
the square of its argument (the square is the result of multiplying a number by itself).

Examples/ test cases:
square(5) == 25
square(-8) == 64
square(10) == 100

Explicit requirements:
- Use the multiply method from the previous problem.
- Compute the square of its argument

Implicit requirements:
- The square is the result of multiplying a number by itself.

Data structure:
- The input is one integer that could be positive or negative
- The output is the square the input number

Algo:
- Create a method named 'square'
- This method takes one integer that could be positive or negative
- Call the 'multiply' method, passing in the same number used for 'square' and use it as both
its arguments.
- Output the result

=end

# Code

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64
p square(10) == 100