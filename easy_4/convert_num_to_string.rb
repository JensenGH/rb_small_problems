=begin

Problem:
- Write a method that takes a positive integer or zero, and converts it to a string representation.

- You may not use any standard conversion methods available in Ruby, such as Integer #to_s, String(),
Kernel#format, etc.

Identify inputs/ outputs:
- Our input is a positive integer or zero
- The output is a string representation of that input number

Identify rules/ requirements:
- Our input is a positive integer or zero. No negative intgers
- Convert to a string representation of the given number without using standard conversion methods

Ask clarifying questions:
- Since our method requires a positive integer or zero, do we output an error message if the user
inputs a negative intgeger? (edge case)

Examples/ test cases:
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

Data structures:
- We are working with integers as input and a string as output

Algorithm:
- Create a method 'integer_to_string'
- This method takes a positive number or zero as input
- To convert our number without using to_s, etc.. we can call Integer #digits which when given
no argument, will return an array of the given number in reverse order
- To put the numbers back in order, we can call #reverse.
- Last, invoke Array #join which returns a string by converting each element of the array to a string.

=end

def integer_to_string(num)
  num.digits.reverse.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'