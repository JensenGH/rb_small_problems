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
- The output is the square of the input number

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

# Further exploration: How could we generalize this method to a 'power to the n' type of method:
# cubed, to the 4th power, to the 5th, etc. while still using the multiply method?

def cubed(num)
  multiply(num, num) * num
end

p cubed(4) == 64
p cubed(8) == 512
p cubed(12) == 1728

def fourth_power(num)
  multiply(num, num) * multiply(num, num)
end

p fourth_power(4) == 256
p fourth_power(3) == 81
p fourth_power(6) == 1296

def fifth_power(num)
  multiply(num, num) * multiply(num, num) * num
end

p fifth_power(5) == 3125
p fifth_power(2) == 32
p fifth_power(7) == 16807