=begin

Problem:
In this exercise, you will write a method named 'xor' that takes two arguments, and returns
true if exactly one of its arguments is truthy, false otherwise. Note that we are looking
for a boolean result instead of a truthy/ falsey value as returned by || and &&.

Examples/ Test cases:
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

Input: 
Two integer input arguments, one having the #even? method called on it and the other having the
#odd? method being called on it.

Output:
A boolean value. (true or false)

Explicit requirements:
The || operator returns a truthy value if either or both of its operands are truthy, false otherwise.
The && operator returns a truthy value if both of its operands are truthy, false otherwise.
The method will take two arguments.
Returns true if exactly one of its arguments is truthy, false otherwise.
We are looking for a boolean result rather than a truthy/ falsey value as returned by || and &&.

Implicit requirements:
None

Questions:
None

Data structure:
Input: Two integer input arguments with either the #even? or #odd? method being called on 
one or the other

Output: Boolean

Within our method: Using the && operator for comparison.

Algorithm:
Create a method called 'xor?'
This method takes two input arguments and returns a boolean
We can use the && operator to determine if exactly one of the input arguments is truthy.
If the first input argument is truthy, but the second is falsey, return true.
If the first input is falsey, but the second input is truthy, return true.
Otherwise if both arguments are falsey, return false.

=end

# Code

def xor?(num1, num2)
  if num1 && !num2
    return true
  elsif !num1 && num2
    return true
  else
    return false
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

# Further exploration
# With xor, if both parameters are true, the answer is false.
# Some additional examples of an xor configuration would be:
# - Any situation where you can choose one or the other, but not both.
# - Walking towards someone down a narrow hallway that only fits 2 people. If they are walking on the
# same side, they will be in eachother's way. Otherwise, they will be able to pass each other.
# The xor method doesn't perform short circuit evaluation on its operands because we are using the &&
# operator, which evaluates the truthiness of both its operands rather then just one.