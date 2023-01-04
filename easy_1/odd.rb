=begin

Problem:
- Write a method that takes one integer argument, which may be positive, negative, or zero. This
method returns true if the number's absolute value is odd. You may assume that the argument is
a valid integer value. 

- Keep in mind you are not allowed to use the methods #odd? or #even? in our solution. 

Examples/ test cases:
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

Explicit requirements:
- The integer input argument can be positive, negative, or zero.
- Must determine if the number's absolute value is odd.
- This method returns a boolean value (true or false).
- Assume the integer value is valid.
- Not allowed to use the methods #odd? or #even? in our solution.

Implicit requirements:
- Return true if the number's absolute value is odd, false otherwise.

Data structure:
- The input argument is an integer with a value that is positive, negative, or zero.
- This method returns a boolean value. (true or false)

Algo:
- Create a method named 'puts_is_odd?'
- This method takes one argument, an integer (positive, negative, or zero)
- We can perform modulo operation:
  - If our input number % 2 is not equal to 0, we know our input's absolute value is odd, false
  otherwise.

=end

# Code

def is_odd?(num)
  num % 2 != 0
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)

# Further exploration

def is_odd?(num)
  num % 5.remainder(3) == 1 # 5.remainder(3) evalutes to 2
end