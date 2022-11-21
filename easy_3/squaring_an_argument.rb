=begin

Problem:
Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes
the square of its argument (the square is the result of multiplying a number by itself).

Input: Integer
Output: Boolean

Explicit requirements:
Compute the square of the methods argument (multiply a number by itself)
Looking at our test cases, the output will be a boolean value

Implicit requirements:
Print true if the number multplied by itself is equal to it's square value.
Print false otherwise.
Input argument could be a positive or negative integer.

Questions:
None

Data structure:
Input: Integer
Output: Boolean

Algorithm:
First Method:
Create a method called 'multiply'
This method takes to input arguments (num1, num2)
multiply num1 and num1
End

Second Method:
Create a method called 'square' that takes one input argument
Input argument is an integer (the number we want to square)
Invoke the 'multiply' method within the 'square' method.
Pass two integer arguments to the 'multiply' method.
The two integers passed to 'multiply' will be the same integer passed to 'square'.

=end

# Code

def multiply(num1, num2)
  num1 * num2
end

p multiply(5, 2) == 10
p multiply(8, 3) == 24

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64

# Further exploration. We can chain the method to find the cubed, power, etc.

def cubed(num)
  multiply(num, num) *  num
end

p cubed(3) == 27
p cubed(4) == 64
p cubed(5) == 125

def power(num, exp)
  multiply(num, 1) ** exp
end

p power(2, 4) == 16
p power(3, 5) == 243
p power(4, 6) == 4096