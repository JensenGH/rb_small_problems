=begin

Problem:
- Write a method that takes an integer, and converts it to a string representation. You
may not use any standard conversion methods available in Ruby, such as Integer#to_s, String(),
etc. You may however use the "integer_to_string" method from the previous exercise.

Input: 
- A set of one or more integers

Output:
- A string represenation of the input's corresponding integers. If the set of integers
is positive, the string will have a "+" sign at the beginning. If the integer is negative, the
string will have a "-" sign at the beginning. If the input integer is 0, return a string representation
of 0.

Examples/ test cases:
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

Explicit requirements:
- Convert the input numbers into a string represenation
- Not allowed to use standard conversion methods
- Allowed to use our previous "integer_to_string" method

Implicit requirements:
- None.

Questions:
- How can we deal with negative integers?
  - I multiplied the negative integer by "-1" to avoid a "out of domain" error i was receiving. 
  Then i was able to append a "-" sign at the beginning of the output string.

Data structure:
- Input is a set of one ore more integers (positive or negative)
- Output is a string represenation of the input's corresponding integers with a "+" sign if the
set of numbers are positive, "-" sign if negative.

Algorithm:
- Using the method from our previous exercise..
- We can then create our "signed_integer_to_string" method
- This method will take a a set of one or more numbers as input
- If the set of numbers is positive, append a "+" sign to the beginning of the string
- If the set of numbers is negative, append a "-" sign to the beginning of the string
- Otherwise, if the input number is 0, return a string represenation of 0.

=end

# Code

def integer_to_string(num)
  num.digits.reverse.join
end

def signed_integer_to_string(numbers)
  if numbers.positive?
    "+" + integer_to_string(numbers)
  elsif numbers.negative?
    "-" + integer_to_string(numbers * -1)
  else numbers == 0
    integer_to_string(numbers)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'